#!/bin/bash

#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export HOSTNAME

# add local to path

PATH=$PATH:/home/${USER}/.local/bin
