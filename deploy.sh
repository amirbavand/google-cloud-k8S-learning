docker build -t ahbavand/multi-client:latest -t ahbavand/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t ahbavand/multi-server:latest -t ahbavand/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t ahbavand/multi-worker:latest -t ahbavand/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push ahbavand/multi-client:latest
docker push ahbavand/multi-server:latest
docker push ahbavand/multi-worker:latest

docker push ahbavand/multi-client:$SHA
docker push ahbavand/multi-server:$SHA
docker push ahbavand/multi-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=ahbavand/multi-server:$SHA
kubectl set image deployments/client-deployment client=ahbavand/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=ahbavand/multi-worker:$SHA