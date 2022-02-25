#!/usr/bin/env bash

# Customization section
UCODE_TYPE=amd-ucode
SWAP_PATH=/mnt/var
SWAP_SIZE=8192        # In mb

declare -A folderArray
#folderArray["/mnt/mnt/shared"]="/dev/sdb1"
#folderArray["/mnt/mnt/test"]="/dev/sdc1"
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
mkdir $SWAP_PATH
dd if=/dev/zero of=$SWAP_PATH/swapfile bs=1M count=$SWAP_SIZE status=progress
chmod 600 $SWAP_PATH/swapfile
mkswap $SWAP_PATH/swapfile
swapon $SWAP_PATH/swapfile
unset $SWAP_PATH
unset $SWAP_SIZE

echo "*** Setting time ***"
timedatectl set-ntp true

echo "*** Installing base system ***"
pacstrap /mnt \
    base base-devel linux linux-firmware linux-headers \
    dkms sudo networkmanager neovim $UCODE_TYPE \
    grub efibootmgr ntfs-3g zsh git openssh \
    pipewire pipewire-alsa pipewire-pulse alsa alsa-utils bluez bluez-utils
unset $UCODE_TYPE

echo "*** Generating fstabs ***"
genfstab -U /mnt >> /mnt/etc/fstab

echo "*** CHROOT ***"
arch-chroot /mnt

