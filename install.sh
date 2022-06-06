#!/bin/bash

# Clone repo

git clone https://github.com/shmink/pop-dictionary.git ~/.pop-dictionary

# Install the Pop!_OS launcher

mkdir -p ~/.local/share/pop-launcher/plugins/
cp -r launcher-plugin-define/ ~/.local/share/pop-launcher/plugins/define
chmod +x ~/.local/share/pop-launcher/plugins/define/define

# Install dictionary

sudo apt update
sudo apt install dictd
sudo apt install dict-gcide
