#!/bin/bash
set -euo pipefail

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling ripgrep all\e[0m"
echo -e "\e[31m###########################\e[0m"

# dependencies
sudo apt install ripgrep pandoc poppler-utils ffmpeg
curl -L -o rga.tar.gz https://github.com/phiresky/ripgrep-all/releases/download/v0.9.6/ripgrep_all-v0.9.6-x86_64-unknown-linux-musl.tar.gz
mkdir rga
tar -xvf rga.tar.gz --directory rga --strip-components=1
mv rga/rga "${HOME}/bin"
rm -rf rga
rm rga.tar.gz
