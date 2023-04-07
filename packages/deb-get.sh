#!/bin/bash
echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling deb-get\e[0m"
echo -e "\e[31m###########################\e[0m"

curl -sL https://raw.githubusercontent.com/wimpysworld/deb-get/main/deb-get | sudo -E bash -s install deb-get

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling deb-get packages\e[0m"
echo -e "\e[31m###########################\e[0m"

deb-get install du-dust
