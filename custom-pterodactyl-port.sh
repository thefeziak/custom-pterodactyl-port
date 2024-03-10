#!/bin/bash

# Echo Message
echo Custom pterodactyl port. Version: 1.0. Created by: fifi7558_

# Installing sudo
apt install sudo -y

# Installing python3
sudo apt install python3 -y

# Installing python3-pip
sudo apt install python3-pip -y

# Installing python3-argparse
sudo pip install argparse

# Installing curl
sudo apt install curl -y

# User port typing
echo "Type port: "
read port

# Running 
sudo screen -dmS custom-pterodactyl-port bash -c "sudo curl https://github.com/fifi75598/custom-pterodactyl-port/main/custom-pterodactyl-port.py | sudo python3 - --port=$port; exec bash"
