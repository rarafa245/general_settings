#!/bin/sh

# Installing net-tools
sudo apt update;
sudo apt install net-tools -y;
sudo apt install curl -y;

# Installing SSH server
sudo apt install openssh-server -y;
sudo ufw allow ssh;

# Installing Git
sudo apt install git-all -y;

# Installing Jenkins Dependencies
sudo apt-get install gnupg -y;
sudo apt install openjdk-11-jdk -y;
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -;
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list';

# Installing Jenkins
sudo apt update;
sudo apt install jenkins -y;

# Installing Docker
sudo apt install docker.io -y;
sudo groupadd docker;
sudo usermod -aG docker $USER;
newgrp docker;

# Installing Docker Composer
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
