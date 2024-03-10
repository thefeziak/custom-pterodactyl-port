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
sudo python3 -m pip install argparse --break-system-packages

# Installing screen
sudo apt install screen -y

# Installing wget
sudo apt install wget -y

# User port typing
echo "Type port: "
read port

# Downloading file to run
sudo wget https://github.com/fifi75598/custom-pterodactyl-port/main/custom-pterodactyl-port.py

# Running
sudo screen -dmS custom-pterodactyl-port bash -c "sudo python3 custom-pterodactyl-port.py --port=$port; exec bash"
