#!/bin/bash

echo '*** Desktop apps ***'

sudo pacman -S \
  firefox \
  --needed --noconfirm

yay -S google-chrome 1password --needed --noconfirm

