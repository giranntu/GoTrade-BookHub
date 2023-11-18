#!/bin/bash

# Removing any existing Go installation
echo "Removing any existing Go installation..."
sudo rm -rf /usr/local/go

# Downloading the latest Go package for Linux
echo "Downloading Go 1.21.4 for Linux..."
wget https://go.dev/dl/go1.21.4.linux-amd64.tar.gz -O /tmp/go1.21.4.linux-amd64.tar.gz

# Extracting the package
echo "Extracting Go package..."
sudo tar -C /usr/local -xzf /tmp/go1.21.4.linux-amd64.tar.gz

# Adding Go to the PATH
echo "Adding Go to the PATH..."
export PATH=$PATH:/usr/local/go/bin

echo "export PATH=\$PATH:/usr/local/go/bin" >> $HOME/.profile

# Applying changes
source $HOME/.profile

# Verifying the installation
echo "Verifying the Go installation..."
go version

echo "Go installation is complete."
