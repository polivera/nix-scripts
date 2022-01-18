#!/bin/bash

sudo pacman -Syu
sudo pacman -S base-devel udiskie udisks2 usbutils git \
    pacman-contrib delve htop fzf --needed --noconfirm

# Install GO
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install go1.4 -B
gvm use go1.4
export GOROOT_BOOTSTRAP=$GOROOT
gvm install go1.17.6
gvm use go1.17.6

# Install yay
echo "Installing yay"
cd "$HOME" || exit
git clone https://aur.archlinux.org/yay.git
cd "$HOME/yay" || exit
makepkg -si --noconfirm
cd "$HOME" || exit
rm -Rf yay

# Some firmware drivers I need
yay -S aic94xx-firmware wd719x-firmware --needed --noconfirm

sudo mkinitcpio -P
