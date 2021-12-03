#!/bin/bash

set -euxo pipefail

if [ $USER = "alex" ]; then
    # Please dont use my git config :))
    cp git/.gitconfig $HOME/.gitconfig
fi

cp $HOME/.zshrc $HOME/.zshrc_backup
cp $PWD/shell/zsh/.zshrc $HOME/.zshrc
