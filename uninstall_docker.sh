#!/bin/bash
dpkg -l | grep -i docker

sudo apt-get purge -y docker-engine docker docker.io docker-ce docker-ce-cli
sudo apt-get autoremove -y --purge docker-engine
sudo apt-get autoremove -y --purge docker
sudo apt-get autoremove -y --purge docker.io
sudo apt-get autoremove -y --purge docker-ce

sudo rm -rf /var/lib/docker /etc/docker
sudo rm /etc/apparmor.d/docker
sudo groupdel docker
sudo rm -rf /var/run/docker.sock
