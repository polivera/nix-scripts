#!/bin/bash

echo '*** Installing ZSH Shell ***'

sudo pacman -Ss zsh --needed --noconfirm

yay -S zsh-syntax-highlighting-git --needed --noconfirm

chsh -s /usr/bin/zsh
