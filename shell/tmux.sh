#!/bin/bash

set -euo pipefail
rm -rf "${HOME}/.tmux"

git clone https://github.com/gpakosz/.tmux.git "${HOME}/.tmux"
ln -s -f "${HOME}/.tmux/.tmux.conf" "${HOME}/.tmux.conf"
cp "${HOME}/.tmux/.tmux.conf.local" "${HOME}/.tmux.conf.local"
echo "setw -g mouse on" >> "${HOME}/.tmux.conf.local"
