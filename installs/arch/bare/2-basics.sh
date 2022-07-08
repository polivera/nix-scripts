#!/bin/bash

sudo pacman -Syu
sudo pacman -S base-devel zsh udiskie udisks2 usbutils git \
    pacman-contrib delve htop fzf go archlinux-keyring --needed --noconfirm

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

