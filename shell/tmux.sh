#!/bin/bash

set -euo pipefail
rm -rf "${HOME}/.oh-my-tmux"

git clone https://github.com/gpakosz/.tmux.git "${HOME}/.oh-my-tmux"
ln -s -f "${HOME}/.oh-my-tmux/.tmux.conf" "${HOME}/.tmux.conf"
cp "${HOME}/.oh-my-tmux/.tmux.conf.local" "${HOME}/.tmux.conf.local"
echo "setw -g mouse on
set -g @plugin 'tmux-plugins/tmux-resurrect'
set -g @plugin 'laktak/extrakto'
set -g @plugin 'tmux-plugins/tmux-continuum'
set -g @continuum-restore 'on'
" >> "${HOME}/.tmux.conf.local"
