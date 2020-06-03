#/bin/sh
# Check for root
if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

# List GPU and ask for GPU
echo 'Listing GPU info'
lspci | grep -e VGA -e 3Dlspci | grep -e VGA -e 3D
echo
echo
echo
echo "
amd
ati
nvidia"

echo 'Please type your GPU'
read gpu

bash ignore-gpu/$gpu.sh
