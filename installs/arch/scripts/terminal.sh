#!/bin/bash

echo '*** Terminal ***'

sudo pacman -S \
  zsh bat exa tree \
  tmux xclip rclone \
  curl wget \
  --needed --noconfirm

