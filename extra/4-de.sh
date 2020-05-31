#!/bin/bash
# Check for sudo
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

# List DE's
echo 'budgie-desktop
cinnamon
deepin
enlightenment
gnome
gnome-flashback
plasma
lxde-gtk3
lxqt
mate
xfce4'

# ask for DE
read de
echo
echo
echo

pacman -S $de
