#!/bin/bash
set -e

echo "Pulling image from docker"

docker pull modassir7488/demo-jenkins:1


# Run the Docker image as a container
echo "Run the docker image"

docker run -d -p 80:80 modassir7488/demo-jenkins:1

