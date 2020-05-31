# Check for root
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

# Sed is WIP
#sed -i "/92,93/ s/# *//" /etc/pacman.conf
# Add multilib lines
echo "[multilib]
Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf
pacman -Syu
echo 'Enabled multilib'
