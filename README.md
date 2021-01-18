# An image repository that eventually will be similar to Instagram

## Project Demo

demo of project can be found [here](http://35.232.11.18/). This has been deployed on Kubernetes engine of Google Cloud. Due to money restrictions, this might not be available in the future.

## Running Locally

To start on locally, you need to have docker installed on your local machine.

1. In the command line, navigate to the local-development directory
2. Run the following command

```
  docker-compose up –build

```

3. In your browser go the following root

```
http://localhost:3050/

```

## Instruction to use the application

People can register to have an account. The account could be public or private. No one has access to the content of a private account, except the owner of that account. the route to register for an account is

```
 /register`

```
