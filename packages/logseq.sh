#!/bin/bash
set -euo pipefail

echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling logseq\e[0m"
echo -e "\e[31m###########################\e[0m"

wget https://github.com/logseq/logseq/releases/download/0.8.11/Logseq-linux-x64-0.8.11.AppImage -O logseq
chmod +x logseq
mv logseq "${HOME}/bin"
