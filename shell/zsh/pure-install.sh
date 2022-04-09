#!/bin/bash

set -euxo pipefail

mkdir -p "$HOME/.zsh"
[ -d "$HOME"/.zsh/pure ] && rm -rf "$HOME"/.zsh/pure_old && mv "$HOME"/.zsh/pure "$HOME"/.zsh/pure_old
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
