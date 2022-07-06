#!/bin/bash

REPO_DIR=~/.pop-dictionary
INSTALL_DIR=~/.local/share/pop-launcher/plugins/define

# Install dependancies

sudo apt update
sudo apt install git python3 dictd dict-gcide dict-jargon dict-vera -y

# Clone repo

rm -rf $REPO_DIR
git clone https://github.com/shmink/pop-dictionary.git $REPO_DIR

# Install the Pop!_OS launcher

rm -rf $INSTALL_DIR
mkdir -p ~/.local/share/pop-launcher/plugins/
cp -r $REPO_DIR/launcher-plugin-define/ $INSTALL_DIR
chmod +x $INSTALL_DIR/define
