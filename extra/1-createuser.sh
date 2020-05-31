#/bin/bash
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
echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers

# Sed is WIP
#sed -i "/70,90/ s/# *//" ~/sud.txt
#sed -n 's/# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/gp' ~/sud.txt
