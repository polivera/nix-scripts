#!/bin/env bash

sudo pacman -S ccid opensc pcsc-tools --needed --noconfirm

sudo systemctl start pcsc.service

yay -S autofirma-bin
