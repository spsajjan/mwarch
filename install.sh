#!/bin/bash
clear
echo "Starting pre-install..." && sleep 3

# UPGRADE THE SYSTEM
echo "Updating the System..."
sudo pacman -Syu

#==> INSTALL PYTHON AND ITS DEPENDENCIES
echo "Installing Python Dependencies..." && sleep 2
#######################################################
dependencies=(python python-pip)
for package in "${dependencies[@]}"; do
    if ! pacman -Q $package &> /dev/null; then
        sudo pacman -S --needed $package
    fi
done
#######################################################

##==> Installing python and dependencies for it
#######################################################
declare -a packages=(
	"inquirer"      # Helps to ask question in shell prompt
	"loguru"        # Logs colorful text with some decorations
	"psutil"        # Process and System Utilities Information
	"gputil"        # GPU Informations for NVIDIA
	"pyamdgpuinfo"  # GPU Information for AMD GPU
	"pyyaml"        # YAML parser and emitter
	"pillow"        # File Support, Image Processing
	"colorama"      # Adds color to text in the terminal
)
for package in "${packages[@]}"; do
    if ! pip show $package &> /dev/null; then
        pip install $package --break-system-packages
    fi
done
echo "Successfully Installed Python Dependencies" && sleep 2



echo "Launching Installer" && sleep 2

##==> Building the system
#######################################################
python Builder/install.py
