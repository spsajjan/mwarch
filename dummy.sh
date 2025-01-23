
#!/bin/bash
clear



#TESTING CODE




# echo "Testing Finished" && exit
############################################################################################
# INSTALL PACKAGES

# ADDING WALLPAPERS
echo -ne "Adding Wallpapers$ov" && sleep 1
mkdir -p ~/Pictures/cm-wallie
cp -R assets/wallpapers/. ~/Pictures/cm-wallie
echo -e "Wallpapers Added" && sleep 2

# CONFIGURE KITTY TERMINAL 
echo -ne "Configuring Kitty Terminal$ov" && sleep 3
echo -ne "Adding Kitty Terminal Background$ov" && sleep 1
mkdir -p ~/.config/kitty/bg
cp -R assets/terminal-bg/cm-terminal-bg.png ~/.config/kitty/bg
mv  ~/.config/kitty/kitty.conf ~/.config/kitty/kitty-original.conf
cp -R app-config/kitty.conf ~/.config/kitty/
echo "Kitty Terminal Configured" && sleep 2

# CONFIGURE NEOFETCH 
echo -ne "Configuring NeoFetch$ov" && sleep 2

exists=$(grep -c "neofetch" ~/.bashrc)
if [[ $exists -gt 0 ]]; then
echo ""
else
echo 'neofetch' >> ~/.bashrc
fi

mkdir -p ~/.config/neofetch/pngs
cp -R .meta/catamint-logo.png ~/.config/neofetch/pngs/
mv  ~/.config/neofetch/config.conf ~/.config/neofetch/config-ori.conf
cp -R app-config/neofetch-config.conf ~/.config/neofetch/
mv  ~/.config/neofetch/neofetch-config.conf ~/.config/neofetch/config.conf

echo "Neofetch Configured...."
exit

