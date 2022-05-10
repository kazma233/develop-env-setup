#!/bin/bash

shell_prefix="[DOCKER_INSTALL]"

daemon_type=$(ps -p 1 -o comm=)
echo "${shell_prefix}current deaemon type is ${daemon_type}!"

# install docker
sudo apt-get update
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list >/dev/null
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# configure docker to start on boot
if [ "$daemon_type" = "systemd" ]; then
    sudo systemctl start docker.service
    sudo systemctl enable docker.service
    sudo systemctl enable containerd.service
    echo "${shell_prefix}configure docker to start on boot use systemd done!"
elif [ "$daemon_type" = "init" ]; then # wsl
    sudo service docker start
    echo "${shell_prefix}docker started!"
else
    echo "${shell_prefix}can not configure docker to start on boot!"
fi

# manage docker as a non-root user
docker_group=$(grep "^docker" /etc/group)
if [ "$docker_group" == "" ]; then
    echo "${shell_prefix}create group docker"
    sudo groupadd docker
fi
sudo usermod -aG docker $USER
newgrp docker