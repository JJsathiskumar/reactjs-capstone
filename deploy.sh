#!/bin/bash

# Docker image details
IMAGE_NAME="prod"
TAG="latest"
# Build the Docker image

# Tag the Docker image with the Docker Hub username and image name
docker tag $IMAGE_NAME $DOCKER_USERNAME/$IMAGE_NAME:$TAG

# Login to Docker Hub
echo "Logging in to Docker Hub..."
docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# Push the Docker image to Docker Hub
echo "Pushing the Docker image to Docker Hub..."
docker push $DOCKER_USERNAME/$IMAGE_NAME:$TAG

