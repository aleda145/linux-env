#!/bin/bash
echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling fzf \e[0m"
echo -e "\e[31m###########################\e[0m"

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
