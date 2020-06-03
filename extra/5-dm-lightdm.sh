#!/bin/sh
# Check for root
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

# Install lightdm
pacman -S lightdm lightdm-webkit2-greeter --noconfirm

# Enable lightdm
systemctl enable lightdm.service

# Install aether
git clone git@github.com:NoiSek/Aether.git
cp --recursive Aether /usr/share/lightdm-webkit/themes/Aether

# Set default lightdm-webkit2-greeter theme to Aether
sed -i 's/^webkit_theme\s*=\s*\(.*\)/webkit_theme = lightdm-webkit-theme-aether #\1/g' /etc/lightdm/lightdm-webkit2-greeter.conf

# Set default lightdm greeter to lightdm-webkit2-greeter
sed -i 's/^\(#?greeter\)-session\s*=\s*\(.*\)/greeter-session = lightdm-webkit2-greeter #\1/ #\2g' /etc/lightdm/lightdm.conf
# Cleanup aether folder
rm -rf Aether
