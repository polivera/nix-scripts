#!/usr/bin/env bash

echo '*** Installing AMD drivers ***'

sudo pacman -S mesa \
    lib32-mesa \
    vulkan-radeon \
    lib32-vulkan-radeon \
    libva-mesa-driver \
    lib32-libva-mesa-driver \
    mesa-vdpau \ 
    lib32-mesa-vdpau \
    --needed --noconfirm

