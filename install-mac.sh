#!/bin/bash
set -e
./packages/install-homebrew.sh

./packages/homebrew-packages.sh

echo -e "\033[31m###########################\033[0m"
echo -e "\033[31minstalling ohmyzsh\033[0m"
echo -e "\033[33mEnter password to set default shell\033[0m"
echo -e "\033[31m###########################\033[0m"
./shell/zsh/ohmyzsh.sh

echo -e "\033[31m###########################\033[0m"
echo -e "\033[31minstalling pure\033[0m"
echo -e "\033[31m###########################\033[0m"
./shell/zsh/pure-install.sh

echo -e "\033[31m###########################\033[0m"
echo -e "\033[31minstalling zsh plugins\033[0m"
echo -e "\033[31m###########################\033[0m"
./shell/zsh/zsh-plugins-install.sh

echo -e "\033[31m###########################\033[0m"
echo -e "\033[31madding .zshrc and .gitconfig\033[0m"
echo -e "\033[31m###########################\033[0m"
./copy-config.sh

echo -e "\033[31m###########################\033[0m"
echo -e "\033[31mAdding utils\033[0m"
echo -e "\033[31m###########################\033[0m"
./copy-utils.sh

echo -e "\033[32mFinished! 🚀🚀\033[0m"
echo -e "Restart your terminal to make changes take effect."
