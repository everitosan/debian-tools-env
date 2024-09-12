#!/bin/bash

user_name=$(getent passwd | cut -d: -f1 | fzf);

sudo usermod -aG docker $user_name;