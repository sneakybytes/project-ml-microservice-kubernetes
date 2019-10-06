#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="sneakybytes/dockerhubflask:flask"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run flask --image=docker.io/$dockerpath --port=80 --generator=run-pod/v1


# Step 3:
# List kubernetes pods
kubectl get pods 

# Step 4:
# Forward the container port to a host
kubectl expose pod/flask --type=NodePort --port 8000 --target-port 80
#kubectl create service nodeport flask-678884bc68-gstpl --node-port 8000 --tcp 8000:80

