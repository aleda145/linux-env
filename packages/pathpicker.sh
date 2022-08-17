#!/bin/bash
set -euo pipefail

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling pathpicker\e[0m"
echo -e "\e[31m###########################\e[0m"

git clone https://github.com/facebook/PathPicker.git
cd PathPicker/debian
./package.sh
sudo dpkg -i ../pathpicker_*_all.deb
cd ../..
rm -rf PathPicker
