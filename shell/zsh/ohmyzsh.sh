#!/bin/bash

set -euo pipefail

[ -d $HOME/.oh-my-zsh ] && rm -rf $HOME/.oh-my-zsh_old && mv --force $HOME/.oh-my-zsh $HOME/.oh-my-zsh_old
ZSH= RUNZSH="no" sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
