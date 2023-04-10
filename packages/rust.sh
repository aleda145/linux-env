#!/bin/bash
echo -e "\e[31m###########################\e[0m"
echo -e "\e[31mInstalling Rust 🦀\e[0m"
echo -e "\e[31m###########################\e[0m"

curl https://sh.rustup.rs -sSf | sh -s -- -y

source "$HOME/.cargo/env" # Source so we can go ahead and install cargoes directly

cargo install bottom
cargo install du-dust
cargo install gping
cargo install zoxide
