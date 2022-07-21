#!/bin/bash
set -e
echo -e "\e[31m###########################\e[0m"
echo -e "\e[31minstalling packages\e[0m"
echo -e "\e[31m###########################\e[0m"
./packages/packages.sh

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31minstalling ohmyzsh\e[0m"
echo -e "\e[33mEnter password to set default shell\e[0m"
echo -e "\e[31m###########################\e[0m"
./shell/zsh/ohmyzsh.sh

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31minstalling pure\e[0m"
echo -e "\e[31m###########################\e[0m"
./shell/zsh/pure-install.sh

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31minstalling zsh plugins\e[0m"
echo -e "\e[31m###########################\e[0m"
./shell/zsh/zsh-plugins-install.sh

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31madding .zshrc and .gitconfig\e[0m"
echo -e "\e[31m###########################\e[0m"
./copy-config.sh

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mAdding utils\e[0m"
echo -e "\e[31m###########################\e[0m"
./copy-utils.sh

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mAdding oh my tmux\e[0m"
echo -e "\e[31m###########################\e[0m"
./shell/tmux.sh

echo -e "\e[32mFinished! 🚀🚀\e[0m"
echo -e "Restart your terminal to make changes take effect."
