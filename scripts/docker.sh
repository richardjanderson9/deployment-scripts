#!/bin/bash

## Commands for Docker installation!
docker_install_cmd="sudo install -m 0755 -d /etc/apt/keyrings > /dev/null && sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc > /dev/null && sudo chmod a+r /etc/apt/keyrings/docker.asc > /dev/null && echo \"deb [arch=\$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \$(. /etc/os-release && echo \"\$VERSION_CODENAME\") stable\" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null && sudo apt-get update > /dev/null && sudo apt-get install -y docker-ce docker-ce-cli containerd.io > /dev/null"

## Execute Docker installation command!
echo "Installing Docker..."
eval "$docker_install_cmd"
