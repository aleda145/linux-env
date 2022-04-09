#!/bin/bash
set -euo pipefail

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling watchexec\e[0m"
echo -e "\e[31m###########################\e[0m"

wget https://github.com/watchexec/watchexec/releases/download/cli-v1.18.11/watchexec-1.18.11-x86_64-unknown-linux-gnu.deb -O watchexec.deb
sudo dpkg -i watchexec.deb
rm watchexec.deb
