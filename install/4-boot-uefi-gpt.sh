#!/bin/bash
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

# Install grub
pacman -S efibootmgr && grub-install --target=x86_64-efi --efi-directory=/boot
# Gen new initramfs
mkinitcpio -P
# Update grub
grub-mkconfig -o /boot/grub/grub.cfg

# Request exit and reboot
echo 'You may now either Exit then reboot or head on to the extras directory'
