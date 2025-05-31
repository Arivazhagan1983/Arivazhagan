#!/bin/bash

echo "👉 Deploying application using Docker Compose"
sudo docker-compose down  # stop existing container if any
sudo docker-compose up -d  # run in detached mode

echo "✅ Application deployed and running in background"

