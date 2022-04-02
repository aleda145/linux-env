#!/bin/bash
set -euxo pipefail

plugins_dir="${HOME}/.oh-my-zsh/custom/plugins"

rm -rf "${plugins_dir}/zsh-syntax-highlighting"
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${plugins_dir}/zsh-syntax-highlighting"
rm -rf "${plugins_dir}/zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions.git "${plugins_dir}/zsh-autosuggestions"
rm -rf "${plugins_dir}/alias-tips"
git clone https://github.com/djui/alias-tips.git "${plugins_dir}/alias-tips"
