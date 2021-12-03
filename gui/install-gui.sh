#!/bin/bash
set -e
echo -e "\e[31m###########################\e[0m"
echo -e "\e[31minstalling GUI packages\e[0m"
echo -e "\e[31m###########################\e[0m"
bash ./packages/apt-gui.sh

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mCopy GUI config\e[0m"
echo -e "\e[31m###########################\e[0m"
bash ./gui/copy-gui.sh

echo -e "\e[32mFinished! 🚀🚀\e[0m"
echo -e "Restart your terminal to make changes take effect."
