#!/bin/bash

set -euo pipefail

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling dog\e[0m"
echo -e "\e[31m###########################\e[0m"

curl -L -o dog.zip https://github.com/ogham/dog/releases/download/v0.1.0/dog-v0.1.0-x86_64-unknown-linux-gnu.zip
mkdir dog
unzip dog.zip -d dog
mv dog/bin/dog "${HOME}/bin"
rm dog.zip
rm -rf dog
