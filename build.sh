#!/bin/bash

# Set your image name
IMAGE_NAME="devops-app"

echo "👉 Building Docker image: $IMAGE_NAME"
sudo docker build -t $IMAGE_NAME .

# Optional: tag it for Docker Hub or ECR
# docker tag $IMAGE_NAME your_dockerhub_username/$IMAGE_NAME:v1

echo "✅ Build complete: $IMAGE_NAME"

