#!/bin/bash

# Setup Redis
minikube kubectl -- apply -f redis-deployment.yaml --namespace redis
minikube kubectl -- apply -f redis-service.yaml --namespace redis

# Setup pod to execute tests
minikube kubectl -- apply -f redis-test.yaml --namespace redis