#!/bin/bash
set -euo pipefail

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling Lazy Docker\e[0m"
echo -e "\e[31m###########################\e[0m"

curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh |
  bash && sudo mv lazydocker /usr/local/bin
