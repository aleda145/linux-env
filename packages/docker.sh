#!/bin/bash

set -euo pipefail

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling Docker\e[0m"
echo -e "\e[31m###########################\e[0m"

sudo apt-get update

# Packages needed
sudo apt-get install -y \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --yes --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# add the key 
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


sudo apt-get update

sudo apt-get install -y docker-ce docker-ce-cli containerd.io
echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mDocker installed!\e[0m"
echo -e "\e[31m###########################\e[0m"

# compose v2
# We will ignore backwards compatbility with the docker-compose v1
mkdir -p ~/.docker/cli-plugins/
latest_release=$(curl -sL https://api.github.com/repos/docker/compose/releases/latest | jq -r ".tag_name")
curl -SL "https://github.com/docker/compose/releases/download/${latest_release}/docker-compose-linux-x86_64" -o ~/.docker/cli-plugins/docker-compose
chmod +x ~/.docker/cli-plugins/docker-compose
echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mdocker compose ${latest_release} installed!\e[0m"
echo -e "\e[31m###########################\e[0m"

# only create the group if it doesnt exist
if [[ ! $(getent group docker) ]]; then
  echo "Creating docker group"
  sudo groupadd docker
fi
sudo usermod -aG docker $USER

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mAdded ${USER} to docker group!\e[0m"
echo -e "\e[31mRestart your shell and run:\e[0m"
echo -e "\e[32m    docker run hello-world\e[0m"
echo -e "\e[31m###########################\e[0m"
