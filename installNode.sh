#!/bin/bash
touch ~/.bashrc
PATH=$PATH:~/bin
echo "Installing curl..."
sudo apt install curl -y  # Use sudo for package management

# Download and install nvm (check for existing installation can be added here)
echo "Downloading and installing nvm..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash

# Source .bashrc to update environment
. ~/.bashrc

# Install Node.js v20.11.1
echo "Installing Node.js v20.11.1..."
nvm install v20.11.1

# List available Node.js versions
nvm list
