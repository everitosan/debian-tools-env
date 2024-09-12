#!/bin/bash
# Based in debian source
# https://wiki.debian.org/VisualStudioCode
#


curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg;
install -o root -g root -m 644 microsoft.gpg /etc/apt/keyrings/microsoft-archive-keyring.gpg;
rm microsoft.gpg;
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/microsoft-archive-keyring.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list';

apt-get update;
apt-get install code;
