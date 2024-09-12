#!/bin/bash

USER_NAME=$USER;

while getopts "u:" arg; do
  case $arg in
    u)
      USER_NAME=$OPTARG;
      ;;
  esac
done

echo "Installing NVM for ${USER_NAME}";


runuser -l "${USER_NAME}" -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash';
runuser -l "${USER_NAME}" -c 'nvm install --lts';
runuser -l "${USER_NAME}" -c 'nvm ls';
