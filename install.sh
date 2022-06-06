#!/bin/bash

# Install dependancies

sudo apt update
sudo apt install git python3 dictd dict-gcide dict-jargon dict-vera -y

# Clone repo

git clone https://github.com/shmink/pop-dictionary.git ~/.pop-dictionary

# Install the Pop!_OS launcher

mkdir -p ~/.local/share/pop-launcher/plugins/
cp -r launcher-plugin-define/ ~/.local/share/pop-launcher/plugins/define
chmod +x ~/.local/share/pop-launcher/plugins/define/define

