#!/bin/bash

USER_NAME=$USER;

while getopts "u:" arg; do
  case $arg in
    u)
      USER_NAME=$OPTARG;
      ;;
  esac
done

echo "Configuring docker for ${USER_NAME}";

sudo usermod -aG docker $USER_NAME;