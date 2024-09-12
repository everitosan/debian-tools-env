#!/bin/bash

# This is a script to install my favourite linux tools
#
# Copyright 2024 Everardo Sanchez
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


echo "Base installation";

apt-get update;
apt-get upgrade;
apt-get install vim zsh curl wget curl net-tools inxi fzf make build-essential libssl-dev bat -y;

# Rust installation
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh;

# Exa installation by cargo
cargo install exa;
# Tldr installation by cargo
cargo install tlrc;
tldr -u;

# Zim SHELL  installation
./zim/install.sh