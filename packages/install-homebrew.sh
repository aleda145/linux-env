#!/bin/bash
set -euo pipefail

echo -e "\033[31m###########################\033[0m"
echo -e "\033[31mInstalling Homebrew\033[0m"
echo -e "\033[31m###########################\033[0m"

bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
