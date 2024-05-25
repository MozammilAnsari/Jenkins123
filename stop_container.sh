#!/bin/bash
set -e

# Filter containers running on port 80:80
containerIds=$(sudo docker ps -aq --filter "publish=80:80")

if [ -z "$containerIds" ]; then
  echo "No container found running on port 80:80"
else
  # Stop only the containers with matching IDs
  for containerId in $containerIds; do
    echo "Stopping container $containerId (listening on 80:80)"
    sudo docker stop $containerId
  done
fi



