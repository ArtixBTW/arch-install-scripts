#!/bin/sh
echo Region && read reg
echo
echo City && read cit

#Time zone
ln -sf /usr/share/zoneinfo/$reg/$cit /etc/localtime
hwclock --systohc
echo 'Timezone set'
