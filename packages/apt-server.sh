#!/bin/bash

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling Packages\e[0m"
echo -e "\e[31m###########################\e[0m"
set -euxo pipefail

# essentials
sudo apt-get install -y \
  build-essential \
  zlib1g-dev \
  libffi-dev \
  libssl-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  liblzma-dev \
  libncurses-dev \
  tk-dev \

# nice packages:
sudo apt-get install -y \
  htop \
  neofetch \
  tldr \
  nmap \
  postgresql-client \
  python-is-python3 \
  bat \
  zsh \
  autojump \
  git-extras \
  shellcheck \
  direnv \
  whois \
  jq \
  tmux \
  jo \
  httpie \
  vim

if [ "$(uname -m)" != "aarch64" ]; then
  sudo apt-get install -y \
    exa \
    duf \
    ripgrep \
    jc \
    xcowsay
else
  echo "ARM architecture detected, skipping some packages"
fi
