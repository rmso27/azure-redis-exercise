#!/bin/bash

# Copy test script, install modules and execute test
minikube kubectl -- cp ../scripts/redis-test.py redis-test:/redis-test.py --namespace redis
minikube kubectl -- exec -it redis-test --namespace redis -- pip install redis
minikube kubectl -- exec -it redis-test --namespace redis -- python /redis-test.py