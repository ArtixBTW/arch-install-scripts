#!/bin/bash
echo '
# 1 Is to install Arch they are the same with a different kernel
# If using standard linux kernel input ' '
linux
linux-lts
linux-zen
linux-hardened'

# Ask for kern
read kern

# Void
echo
echo

# Install base
pacstrap /mnt base base-devel $kern linux-firmware netctl networkmanager dialog dhcpcd dnsmasq openssh nano sudo git man pacman-contrib reflector

# Gen Fstab
genfstab -U /mnt >> /mnt/etc/fstab

mkdir -p /mnt/arch_install
cp -r $PWD/../* /mnt/arch_install

arch-chroot /mnt
