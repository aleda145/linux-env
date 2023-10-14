#!/bin/bash
set -euo pipefail

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling Tofu\e[0m"
echo -e "\e[31m###########################\e[0m"

wget https://github.com/opentofu/opentofu/releases/download/v1.6.0-alpha2/tofu_1.6.0-alpha2_amd64.deb

sudo dpkg -i tofu_1.6.0-alpha2_amd64.deb
rm tofu_1.6.0-alpha2_amd64.deb
