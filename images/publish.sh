#!/bin/bash

# Log in to the Azure Container Registry (ACR)
az acr login --name $BUILDCR_NAME --username $BUILD_CLIENTID --password $BUILD_CLIENTSECRET

# Build the Docker image
docker build -t $BUILDCR_NAME/my-web-app:latest .

# Push the image to the Azure Container Registry
docker push $BUILDCR_NAME/my-web-app:latest
