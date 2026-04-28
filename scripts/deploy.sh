#!/bin/bash

echo "Building Docker image..."
docker build -t open5gs-core .

echo "Deploying to Kubernetes..."
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

kubectl rollout status deployment/open5gs
