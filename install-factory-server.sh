#!/bin/bash
set -e

sudo -v

sudo apt install libsdl2-2.0-0:i386
sudo -H -u steam bash -c '/usr/games/steamcmd +login anonymous +force_install_dir ~/satisfactory +app_update 1690800 validate +quit'

sudo cp ./systemd/satisfactory.service /etc/systemd/system
sudo systemctl enable satisfactory
sudo systemctl start satisfactory
