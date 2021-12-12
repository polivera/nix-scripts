#!/usr/bin/env bash

sudo pacman -S noto-fonts-emoji ttf-joypixels ttf-roboto ttf-roboto-mono --needed --noconfirm

yay -S ttf-twemoji-color ttf-mac-fonts ttf-meslo-nerd-font-powerlevel10k --needed --noconfirm

sudo fc-cache -f
