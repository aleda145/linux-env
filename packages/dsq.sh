#!/bin/bash
curl -LO "https://github.com/multiprocessio/dsq/releases/download/0.12.0/dsq-$(uname -s | awk '{ print tolower($0) }')-x64-0.12.0.zip"
unzip dsq-*-0.12.0.zip
sudo mv dsq /usr/local/bin/dsq
rm dsq-*-0.12.0.zip
