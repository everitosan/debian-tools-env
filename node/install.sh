#!/bin/bash

# change to normal user to install nvm 
user_name=$(getent passwd | cut -d: -f1 | fzf);

runuser -l "${user_name}" -c 'curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash';

runuser -l "${user_name}" -c 'nvm install --lts';
runuser -l "${user_name}" -c 'nvm ls';
