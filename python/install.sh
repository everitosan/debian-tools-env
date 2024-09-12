#!/bin/bash

sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev;
user_name=$(getent passwd | cut -d: -f1 | fzf);

runuser -l "${user_name}" -c 'curl https://pyenv.run | bash';