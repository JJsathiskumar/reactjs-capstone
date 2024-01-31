#!/bin/bash

# Configuration variables
SERVER_USERNAME="username"
SERVER_IP="server_ip"
IMAGE_NAME="your_image_name"
IMAGE_TAG="latest"

# SSH into the server
ssh $SERVER_USERNAME@$SERVER_IP << EOF

# Pull the latest version of the image from the registry
docker pull $IMAGE_NAME:$IMAGE_TAG

# Stop the existing container (if running)
docker stop $IMAGE_NAME || true

# Remove the existing container (if exists)
docker rm $IMAGE_NAME || true

# Run the new container
docker run -d --name $IMAGE_NAME -p 8080:80 $IMAGE_NAME:$IMAGE_TAG

# Cleanup unused images (optional)
# docker image prune -f

EOF

