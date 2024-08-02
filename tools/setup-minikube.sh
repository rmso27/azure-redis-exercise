#!/bin/bash

# Download and install latest Minikube version
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube && rm minikube-linux-amd64

# Setup Docker permissions
sudo usermod -aG docker $USER && newgrp docker
