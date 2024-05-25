#!/bin/bash
set -e

echo "Pulling image from docker"

docker pull modassir7488/my-app:tagname


# Run the Docker image as a container
echo "Run the docker image"

docker run -d -p 5000:5000 modassir7488/my-app:tagname

