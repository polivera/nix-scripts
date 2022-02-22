#!/bin/bash

# Customization variables
MACHINE_NAME=otrave
BOOT_DIRECTORY=/boot/efi
TIME_ZONE="/America/Argentina/Buenos_Aires"
SUDO_WITH_PASSWORD=0
USER_NAME=pablo
# When you finish setting your config, comment the next line
#echo "Remember to edit the config!"
#exit 1
# End customization

# Configuring timezone
echo "*** Setting timezone to ${TIME_ZONE} ***"
ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
hwclock --systohc

# Configuring locale
cp /etc/locale.gen /etc/locale.gen.back
echo 'en_US.UTF-8 UTF-8' >/etc/locale.gen
echo 'en_GB.UTF-8 UTF-8' >>/etc/locale.gen
echo 'es_AR.UTF-8 UTF-8' >>/etc/locale.gen
locale-gen
echo 'LANG=en_US.UTF-8' >/etc/locale.conf

# Configure hosts and computer name
echo "*** Setting computer name to ${MACHINE_NAME} ***"
echo "${MACHINE_NAME}" >/etc/hostname

echo "*** Configure hostfile ***"
# shellcheck disable=SC2129
echo '127.0.0.1    localhost' >>/etc/hosts
echo '::1          localhost' >>/etc/hosts
echo "127.0.1.1    ${MACHINE_NAME} ${MACHINE_NAME}.localhost" >>/etc/hosts

# init
mkinitcpio -P

# user config
echo "*** Setting root Password ***"
passwd

echo "*** Setting ${USER_NAME} Password ***"
useradd -m $USER_NAME -G wheel
passwd $USER_NAME

cp /etc/sudoers /etc/sudoers.back
if [[ $SUDO_WITH_PASSWORD == 0 ]]; then
  echo '%wheel ALL=(ALL) NOPASSWD: ALL' >>/etc/sudoers
else
  echo '%wheel ALL=(ALL) ALL: ALL' >>/etc/sudoers
fi

grub-install --target=x86_64-efi --efi-directory=$BOOT_DIRECTORY --bootloader-id=GRUB
#echo 'GRUB_DISABLE_OS_PROBER=false' >> /etc/default/grub
grub-mkconfig -o /boot/grub/grub.cfg

# Enable NM
systemctl enable NetworkManager
systemctl enable bluetooth

#sed -i 's/#Color/Color/g' /etc/pacman.conf

# shellcheck disable=SC2129
#echo '' >>/etc/pacman.conf
#echo '[multilib]' >>/etc/pacman.conf
#echo 'Include = /etc/pacman.d/mirrorlist' >>/etc/pacman.conf

