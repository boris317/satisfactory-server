#!/usr/bin/bash
set -e
sudo -v

sudo groupadd steam
sudo useradd -g steam -m steam -s /bin/bash

sudo tee -a /etc/apt/sources.list > /dev/null <<EOT
deb http://deb.debian.org/debian stretch main contrib non-free
deb-src http://deb.debian.org/debian stretch main contrib non-free

deb http://deb.debian.org/debian stretch-updates main contrib non-free
deb-src http://deb.debian.org/debian stretch-updates main contrib non-free

deb http://security.debian.org/ stretch/updates main contrib non-free
deb-src http://security.debian.org/ stretch/updates main contrib non-free
EOT

sudo add-apt-repository multiverse
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install lib32gcc1 steamcmd

