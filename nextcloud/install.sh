#!/bin/bash

USER_NAME=$USER;

while getopts "u:" arg; do
  case $arg in
    u)
      USER_NAME=$OPTARG;
      ;;
  esac
done

echo "Installing nextcloud for ${USER_NAME}";

runuser -l "${USER_NAME}" -c 'mkdir -p ~/bin/nextcloud'
runuser -l "${USER_NAME}" -c 'curl -Ls https://github.com/nextcloud-releases/desktop/releases/download/v3.13.3/Nextcloud-3.13.3-x86_64.AppImage -O'
runuser -l "${USER_NAME}" -c 'mv Nextcloud-3.13.3-x86_64.AppImage  ~/bin/nextcloud/'
