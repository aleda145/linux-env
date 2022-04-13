#!/bin/bash
echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling Broot\e[0m"
echo -e "\e[31m###########################\e[0m"

wget https://dystroy.org/broot/download/x86_64-linux/broot &&
  sudo mv broot /usr/local/bin &&
  chmod +x /usr/local/bin/broot
