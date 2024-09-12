#!/bin/bash

# This is a script to install my favourite linux tools in a desktop environment
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


echo "Desktop installation";
# Base installation
./basic.sh;
# Terminal
./tilix/install.sh;
./tilix/config.sh;
# CODE environments
./python/install.sh;
./node/install.sh;
./dotnet/install-sdk.sh;
./docker/install.sh;
# Code editors
./vscode/install.sh;
# Bowsers
./chromium/install.sh;
# Music
./spotify/install.sh;
apt-get install rhythmbox -y;
