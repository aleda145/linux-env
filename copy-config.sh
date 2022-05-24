#!/bin/bash

set -euxo pipefail

if [ "$USER" = "gustav" ]; then
  # Please dont use my git config :))
  cp git/.gitconfig "$HOME"/.gitconfig
fi

cp "$HOME"/.zshrc "$HOME"/.zshrc_backup
if [[ $(uname) = "Darwin" ]]; then
  cp "$PWD"/shell/zsh/.zshrc-mac "$HOME"/.zshrc
else
  cp "$PWD"/shell/zsh/.zshrc "$HOME"/.zshrc
fi
