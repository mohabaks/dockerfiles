#!/bin/bash
set -e
set -x
# Function to check if a package is installed
is_package_installed() {
    dpkg -s "$1" >/dev/null 2>&1
}

install_packages(){
sudo apt update 
#DEBIAN_FRONTEND=noninteractive sudo apt upgrade -y

# Read package names from packages.txt and install if not already installed
for package in $(cat packages.txt); do
    if is_package_installed "$package"; then
        echo "Package $package is already installed. Skipping..."
        continue
    else
        echo "Installing package $package..."
        DEBIAN_FRONTEND=noninteractive sudo apt-get install -y "$package"
        echo "Package $package installed successfully!"

        # updating wireshark group
        if [[ "$package" = "wireshark" ]];then
            echo yes|sudo dpkg-reconfigure wireshark-common
        fi
    fi
done

# Do a system clean
sudo apt autoremove -y --purge
sudo apt  clean -y
sudo rm -rf /var/lib/apt/lists/*
}

# Main
if [ -s packages.txt ]; then
        install_packages
fi