#!/bin/bash
set -euo pipefail

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling Dagger\e[0m"
echo -e "\e[31m###########################\e[0m"

cd /usr/local || exit
curl -L https://dl.dagger.io/dagger/install.sh | sudo sh
