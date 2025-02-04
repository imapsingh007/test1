#!/bin/bash

# Assuming the necessary environment variables are set:
# BUILDCR_NAME, BUILD_CLIENTID, BUILD_CLIENTSECRET, BUILDCR_PASSWORD

# Login to Azure Container Registry
az acr login --name $BUILDCR_NAME --username $BUILD_CLIENTID --password $BUILD_CLIENTSECRET

# Build the Docker image (e.g., from the Dockerfile)
docker build -t $BUILDCR_NAME.azurecr.io/test1:latest .

# Push the image to Azure Container Registry
docker push $BUILDCR_NAME.azurecr.io/test1:latest
