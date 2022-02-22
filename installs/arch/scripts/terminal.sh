#!/bin/bash

echo '*** Terminal ***'

sudo pacman -S \
  zsh bat exa tree \
  tmux xclip \
  curl wget \
  --needed --noconfirm

