#!/usr/local/bin/bash

# Customization section
UCODE_TYPE=amd-ucode
SWAP_PATH=/usr/share/swapfile
SWAP_SIZE=8192        # In mb

declare -A folderArray
folderArray["/mnt/mnt/shared"]="/dev/sdb1"
folderArray["/mnt/mnt/test"]="/dev/sdc1"
# End customization section


echo "*** Creating mounting points and mounting filesystems ***"
for key in "${!folderArray[@]}"
do
  mkdir -p ${key};
  mount ${folderArray[$key]} ${key};
done
unset $key
unset $folderArray

echo "*** Creating and mounting swapfile ***"
dd if=/dev/zero of=$SWAP_PATH bs=1M count=$SWAP_SIZE status=progress
chmod 600 $SWAP_PATH
mkswap $SWAP_PATH
unset $SWAP_PATH
unset $SWAP_SIZE

echo "*** Setting time ***"
timedatectl set-ntp true

echo "*** Installing base system ***"
pacstrap /mnt \
    base base-devel linux linux-firmware linux-headers \
    dkms sudo networkmanager neovim $UCODE_TYPE \
    grub efibootmgr os-prober ntfs-3g zsh fzf \
    openssh pulseaudio alsa alsa-utils bluez bluez-utils
unset $UCODE_TYPE

echo "*** Generating fstabs ***"
genfstab -U /mnt >> /mnt/etc/fstab

echo "*** CHROOT ***"
arch-chroot /mnt

