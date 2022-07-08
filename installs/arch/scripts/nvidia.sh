#!/bin/bash

echo '*** Installing nVidia drivers ***'

sudo pacman -S nvidia \
    ffnvcodec-headers \
    libvdpau \
    libxnvctrl \
    nvidia-dkms \
    nvidia-settings \
    nvidia-utils \
    opencl-nvidia \
    nvidia-cg-toolkit \
    vulkan-icd-loader \
    lib32-vulkan-icd-loader \
    lib32-flex \
    lib32-libcanberra \
    lib32-libcanberra-pulse \
    lib32-libva-vdpau-driver \
    lib32-mesa-demos \
    lib32-nvidia-utils \
    libcanberra \
    libcanberra-pulse \
    libva-vdpau-driver --needed --noconfirm

echo "Remember to add kernel parameter nvidia-drm.modeset=1"

