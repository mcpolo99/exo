 #!/bin/bash

 # Variables
 # IMAGE_NAME="ghcr.io/YOUR_GITHUB_USERNAME/YOUR_REPO-devcontainer"
 # TAG="latest"

 # Build the image
 # docker build -t exo-developer:latest -f ./Docker/Dockerfile.base .
docker build --pull --rm -f '.\Dockerfile' -t 'exo:latest' ../ 
# # # Log in to GitHub Container Registry (if pushing)
#  # echo "Logging into GitHub Container Registry..."
#  # echo $GITHUB_TOKEN | docker login ghcr.io -u YOUR_GITHUB_USERNAME --password-stdin

# # # Push the image (optional)
# # docker push $IMAGE_NAME:$TAG