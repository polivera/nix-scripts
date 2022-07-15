#!/usr/bin/env bash

echo '*** Installing AMD drivers ***'

sudo pacman -S mesa \
    lib32-mesa \
    vulkan-radeon \
    lib32-vulkan-radeon \
    xf86-video-amdgpu \
    libva-mesa-driver \
    lib32-libva-mesa-driver \
    vulkan-icd-loader \
    lib32-vulkan-icd-loader
    mesa-vdpau \
    lib32-mesa-vdpau \
    --needed --noconfirm
