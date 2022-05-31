#!/bin/bash
set -euo pipefail

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling Tig\e[0m"
echo -e "\e[31m###########################\e[0m"

curl -L -o tig.tar.gz https://github.com/jonas/tig/releases/download/tig-2.5.5/tig-2.5.5.tar.gz
mkdir tig
tar -xvf tig.tar.gz --directory tig --strip-components=1
cd tig
make install
cd ..
rm -rf tig
rm tig.tar.gz
