#!/bin/bash

USER_NAME=$USER;

while getopts "u:" arg; do
  case $arg in
    u)
      USER_NAME=$OPTARG;
      ;;
  esac
done

echo "Installing pyenv for ${USER_NAME}";

sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev;
runuser -l "${USER_NAME}" -c 'curl https://pyenv.run | bash';