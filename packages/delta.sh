#!/bin/bash
echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling Delta\e[0m"
echo -e "\e[31m###########################\e[0m"

wget "https://github.com/dandavison/delta/releases/download/0.18.2/git-delta_0.18.2_amd64.deb" -O delta.deb
sudo dpkg -i delta.deb
rm delta.deb
