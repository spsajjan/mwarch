#!/bin/bash
clear
echo """
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣶⣦⣤⣄⣤⣶⠿⠿⠿⠿⢷⣶⠿⠛⠛⢿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠁⠀⠉⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⣀⡀⠀⠀⠀⠀⠸⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡛⠀⠀⠀⠀⠀⠀⣴⣆⠀⠀⠀
                                    ⠀⠀⢠⣴⣿⣧⡀⠀⠀⠀⣼⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠀⠀⢿⣆⠀⠀⠀⠰⢿⣿⣿⣷⠄⠀
                                    ⠀⠀⠘⢻⣿⠟⠋⠀⠀⢰⣿⠁⠀⢠⣶⣦⠀⠀⠀⠰⠶⠀⠀⠠⣿⣿⠂⠀⠘⣿⣄⡀⠀⠀⠈⠿⠏⠁⠀⠀
                                    ⠀⢀⣀⠀⠉⠀⠀⠀⠀⣼⣏⣀⡀⠘⠿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣛⣿⣿⡟⠃⠀⠀⠀⣀⡀⠀⠀
                                    ⢠⣾⣿⣦⡄⠀⢠⣶⣾⣿⣿⣟⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠛⢻⣿⠆⠀⠀⣴⣿⣷⣤⡀
                                    ⠈⠻⣿⠟⠁⠀⠀⣠⣾⣿⡛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⠏⠀⠀⠀⠙⣿⡿⠋⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠉⠉⠻⣿⣦⣄⠀⠀⠀⠀⣴⣾⢿⣷⠿⢶⣦⡀⠀⠀⠀⣴⡿⠋⠀⠀⢀⠀⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢙⣿⡗⠀⠀⠘⠛⠁⢸⣿⣀⠀⠉⠀⠀⠀⠀⠹⣿⡆⠀⣾⡿⣿⣆⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⡿⠀⠀⠀⠀⠀⠀⠸⠛⠛⠀⠀⠀⠀⠀⠀⠀⠹⣿⣶⣿⢁⣿⡏⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣣⣾⡟⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⡃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⠟⠀⠀⠀⠀⠀⠀
                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀
                                      __   ____  ______   ____  ___ ___  ____  ____   ______ 
                                    /  ] /    ||      | /    ||   |   ||    ||    \ |      |
                                   /  / |  o  ||      ||  o  || _   _ | |  | |  _  ||      |
                                  /  /  |     ||_|  |_||     ||  \_/  | |  | |  |  ||_|  |_|
                                 /   \_ |  _  |  |  |  |  _  ||   |   | |  | |  |  |  |  |  
                                 \     ||  |  |  |  |  |  |  ||   |   | |  | |  |  |  |  |  
                                  \____||__|__|  |__|  |__|__||___|___||____||__|__|  |__| 
"""
echo
echo "Starting pre-install..." && sleep 3

# UPGRADE THE SYSTEM
echo "Updating and Updating the System Files..."
sudo apt update
sudo apt upgrade

# INSTALL PYTHON AND ITS DEPENDENCIES
echo "Installing Python Dependencies..." && sleep 2


declare -a PKGS=(python3 python3-pip)
for REQUIRED_PKG in "${PKGS[@]}"; do
  PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $REQUIRED_PKG|grep "package already installed")
  echo Checking for $REQUIRED_PKG: $PKG_OK
  if [ "" = "$PKG_OK" ]; then
    echo "No $REQUIRED_PKG. Setting up $REQUIRED_PKG."
    sudo apt-get --yes install $REQUIRED_PKG
  fi
done

# Python Packages
declare -a packages=(
	"inquirer"
	"loguru"
	"psutil"
	"gputil"
	"pyamdgpuinfo"
	"pyyaml"
	"pillow"
	"colorama"
)

for package in "${packages[@]}"; do
    if ! pip show $package &> /dev/null; then
        pip install $package --break-system-packages
    fi
done

echo "Successfully Installed Python Dependencies"
