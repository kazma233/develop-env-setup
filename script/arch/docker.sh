#!/bin/bash

sudo pacman -Sy docker --noconfirm
sudo pacman -S docker-compose --noconfirm

sudo systemctl enable docker.service

sudo gpasswd -a ${USER} docker

sudo systemctl restart docker.service

sudo chmod a+rw /var/run/docker.sock