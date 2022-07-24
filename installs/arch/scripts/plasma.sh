#!/bin/env bash

sudo pacman -S plasma \
  plasma-wayland-session \
  kde-applications \
  firefox \
  --needed --noconfirm

yay -S google-chrome 1password spotify --needed --noconfirm
