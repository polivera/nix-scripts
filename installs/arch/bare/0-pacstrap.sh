#!/usr/bin/bash

# Customization section
UCODE_TYPE="amd-ucode"
SWAP_SIZE=8192        # In mb
SWAPFILE_FOLDER_PATH="/mnt/mnt/data/system"
declare -A folderArray
folderArray["/mnt/mnt/data"]="/dev/sdb1"
# When you finish setting your config, comment the next line
echo "Remember to edit the config!"; exit 1
# End customization section


# Mounting other disks
for key in "${!folderArray[@]}"
do
  echo "*** Creating mount point for ${folderArray[$key]} ***"
  mkdir -p ${key}
  mount ${folderArray[$key]} ${key};
done

# Create swapfile
if [[ ! -f "$SWAPFILE_FOLDER_PATH/swapfile" ]]; then
  echo "*** Creating swap file ***"
  [[ ! -d "$SWAPFILE_FOLDER_PATH" ]] && mkdir -p $SWAPFILE_FOLDER_PATH
  dd if=/dev/zero of=$SWAPFILE_FOLDER_PATH/swapfile bs=1M count=$SWAP_SIZE status=progress
  chmod 600 $SWAPFILE_FOLDER_PATH/swapfile
  mkswap $SWAPFILE_FOLDER_PATH/swapfile
fi
echo "*** Mounting swapfile ***"
swapon $SWAPFILE_FOLDER_PATH/swapfile

echo "*** Setting time ***"
timedatectl set-ntp true

echo "*** Running pacstrap on /mnt ***"
pacstrap /mnt \
  base base-devel linux linux-firmware linux-headers \
  dkms sudo networkmanager neovim $UCODE_TYPE \
  grub efibootmgr ntfs-3g openssh \
  pulseaudio alsa alsa-utils bluez bluez-utils

echo "*** Generating fstabs ***"
genfstab -U /mnt >> /mnt/etc/fstab

echo "*** *** ***"
echo "Process finish. After review run command 'arch-chroot /mnt'. "
