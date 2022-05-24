#!/bin/bash

echo -e "\033[31m###########################\033[0m"
echo -e "\033[31mInstalling Homebrew Packages\033[0m"
echo -e "\033[31m###########################\033[0m"
set -euxo pipefail

brew install \
  coreutils \
  gnu-sed \
  wget \
  htop \
  neofetch \
  tldr \
  nmap \
  bat \
  zsh \
  fzf \
  autojump \
  git-extras \
  shellcheck \
  direnv \
  whois \
  jq \
  tmux \
  jo \
  httpie \
  exa \
  duf \
  ripgrep \
  jc \
  watchexec \
  dsq \
  terraform \
  broot \
  git-delta \
  go
