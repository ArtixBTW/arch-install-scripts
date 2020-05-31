#/bin/bash
# Check for sudo
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

echo "This will clean up the installed scripts"
rm -rf /mnt/arch_install
rm -rf /arch_install
