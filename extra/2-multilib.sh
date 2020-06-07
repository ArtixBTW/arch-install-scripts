#!/bin/sh
# Check for root
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

# Uncomment line 92 and 93 for multilib from /etc/pacman.conf
sed -i -e '92s/^.\(.*\)/\1/' -e '93s/^.\(.*\)/\1/' /etc/pacman.conf
