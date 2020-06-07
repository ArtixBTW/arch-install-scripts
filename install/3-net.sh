#!/bin/sh
echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
locale-gen

echo 'LANG=en_US.UTF-8' >> /etc/locale.conf

# Hostname
echo 'Enter hostname'
read host

echo $host >> /etc/hostname

# Setup /etc/hosts
echo 127.0.0.1  localhost >> /etc/hosts
echo ::1                localhost >> /etc/hosts
echo 127.0.1.1  $host   $host >> /etc/hosts

# Success
echo 'Hostname set'
