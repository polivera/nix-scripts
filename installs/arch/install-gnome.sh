#!/bin/bash

# Customization section
HOME_FOLDER_ROOT=/mnt/data/pablo/home
# When you finish setting your config, comment the next line
echo "Remember to edit the config!"; exit 1
# End customization section

echo '*** Installing Gnome DE ***'

sudo pacman -S \
    avahi \
    eog \
    evince \
    file-roller \
    gdm \
    gnome-backgrounds \
    gnome-calculator \
    gnome-calendar \
    gnome-contacts \
    gnome-control-center \
    gnome-font-viewer \
    gnome-keyring \
    gnome-logs \
    gnome-menus \
    gnome-screenshot \
    gnome-session \
    gnome-settings-daemon \
    gnome-shell \
    gnome-shell-extensions \
    gnome-system-monitor \
    gnome-tweaks \
    gnome-usage \
    gnome-todo \
    gnome-disk-utility \
    gnome-terminal \
    grilo-plugins \
    gvfs \
    gvfs-google \
    mousetweaks \
    nautilus \
    mutter \
    networkmanager \
    tracker \
    tracker-miners \
    simple-scan \
    gst-libav \
    perl-file-mimeinfo \
    gst-libav \
    gst-plugins-bad \
    gst-plugins-base \
    gst-plugins-good \
    gst-plugins-ugly \
    xdg-user-dirs-gtk \
    gnome-clocks \
    gnome-weather \
    devhelp \
    kvantum-qt5 \
    xdg-user-dirs \
    xdg-user-dirs-gtk \
    xdg-utils \
    xf86-input-elographics \
    xf86-input-evdev \
    xf86-input-libinput \
    xf86-input-void \
    xf86-input-wacom \
    xfsprogs \
    xorg-mkfontscale \
    xorg-server \
    xorg-twm \
    xorg-xinit \
    --needed --noconfirm

if [[ ! -f "$HOME_FOLDER_ROOT/.local/share/gnome-shell" ]]; then
  mkdir -p "$HOME_FOLDER_ROOT/.local/share/gnome-shell"
fi

if [[ "$HOME_FOLDER_ROOT" != "$HOME" ]]; then
  ln -s "$HOME_FOLDER_ROOT/.local/share/gnome-shell" "$HOME/.local/share"
fi

sudo systemctl enable gdm
