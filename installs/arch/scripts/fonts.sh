#!/usr/bin/env bash

echo '*** Installing Fonts ***'

sudo pacman -S noto-fonts-emoji ttf-joypixels ttf-roboto-mono --needed --noconfirm

yay -S ttf-twemoji-color siji-git ttf-unifont --needed --noconfirm

sudo fc-cache -f

