#!/bin/bash
# Portainer Deployment on standalone Docker in Linux

# Create Docker Volume for Portainer
docker volume create portainer_data

# Setting Up Portainer
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -v portainer_data:/data portainer/portainer-ce:latest

echo "Log into Portainer at https://IPAddress:9443"
