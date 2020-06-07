#/bin/sh
# Ask for user
echo 'Please enter wanted name of user'
read wanuser

# Create user
useradd -m -G wheel -s /bin/bash $wanuser
echo 'Created user'

# Set passwd
echo 'Set user password'
passwd $wanuser

# Give user sudo priveliges
sed -i 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/g' /etc/sudoers
