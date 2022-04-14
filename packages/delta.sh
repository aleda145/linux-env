#!/bin/bash
echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling Delta\e[0m"
echo -e "\e[31m###########################\e[0m"

wget "https://github.com/dandavison/delta/releases/download/0.12.1/git-delta_0.12.1_amd64.deb" -O delta.deb
sudo dpkg -i delta.deb
rm delta.deb
