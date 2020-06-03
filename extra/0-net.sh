#/bin/sh
systemctl enable NetworkManager
systemctl enable dhcpcd
echo "Reboot or use 'nmtui' if you still don't have internet"
