#!/bin/sh
# Check for root
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

pacman -S sddm --noconfirm
systemctl enable sddm
