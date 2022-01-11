#!/bin/bash

echo '*** Installing nVidia drivers ***'

sudo pacman -S plasma-meta \
  kde-system-meta \
  kde-utilities-meta \
  kde-accessibility-meta \
  --needed --noconfirm
