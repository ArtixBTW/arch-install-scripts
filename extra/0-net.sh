#/bin/bash
systemctl enable NetworkManager
systemctl enable dhcpcd
echo "Reboot or use 'wifi-menu' if you still don't have internet"
