#!/bin/sh
# Check for root

# Root passwd
echo 'Set root passwd'
passwd

echo 'CPU
----------
amd
intel
----------'
echo
read cpu

echo 'ucode chosen'

# Install grub and ucode
pacman -S grub $cpu-ucode
# List drives
lsblk

# Ask for drive
echo "Select drive you're installing grub too
this is not your partition choose the whole drive,
please use the full name and select the drive Arch will be installed too
Ex: For drive sda you would input /dev/sda"
read drive


# Install grub
grub-install --target=i386-pc $drive
# Gen new initramfs
mkinitcpio -P
# Update grub
grub-mkconfig -o /boot/grub/grub.cfg

# Request exit and reboot
echo 'You may now either Exit then reboot or head on to the extras directory''
