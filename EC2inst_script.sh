#!/bin/bash

# Save Logs
exec > >(tee -a /var/log/user-data.log) 2>&1

# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl -y
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

# To install the latest version, run
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin -y

# Installing Docker Compose
sudo apt-get update
sudo apt-get install docker-compose-plugin -y

# Add Ubuntu user to the Docker group
sudo usermod -aG docker ubuntu

# Restart Docker to apply group changes
sudo systemctl restart docker

# Final message
echo "Docker installation and configuration completed successfully. Please log out and back in to apply group changes."