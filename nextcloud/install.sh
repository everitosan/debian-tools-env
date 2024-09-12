#!/bin/bash

user_name=$(getent passwd | cut -d: -f1 | fzf);

runuser -l "${user_name}" -c 'mkdir -p ~/bin/nextcloud'
runuser -l "${user_name}" -c 'curl -Ls https://github.com/nextcloud-releases/desktop/releases/download/v3.13.3/Nextcloud-3.13.3-x86_64.AppImage -O'
runuser -l "${user_name}" -c 'mv Nextcloud-3.13.3-x86_64.AppImage  ~/bin/nextcloud/'
