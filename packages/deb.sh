#!/bin/bash
set -euxo pipefail

wget https://github.com/watchexec/watchexec/releases/download/cli-v1.18.11/watchexec-1.18.11-x86_64-unknown-linux-gnu.deb -O watchexec.deb
sudo dpkg -i watchexec.deb
rm watchexec.deb
