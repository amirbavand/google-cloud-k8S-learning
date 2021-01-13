kubectl delete pod --all
docker build -t ahbavand/python-client:latest -t ahbavand/python-client:$SHA -f ./client/Dockerfile ./client
docker build -t ahbavand/python-server:latest -t ahbavand/python-server:$SHA -f ./server/Dockerfile ./server

docker push ahbavand/python-client:latest
docker push ahbavand/python-server:latest
docker push ahbavand/python-worker:latest

docker push ahbavand/python-client:$SHA
docker push ahbavand/python-server:$SHA
docker push ahbavand/python-worker:$SHA

kubectl apply -f k8s
kubectl set image deployments/server-deployment server=ahbavand/python-server:$SHA
kubectl set image deployments/client-deployment client=ahbavand/python-client:$SHA
