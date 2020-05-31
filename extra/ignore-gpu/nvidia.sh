#/bin/bash
# Check for root
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

pacman -S xf86-video-nouveau mesa lib32-mesa --noconfirm
