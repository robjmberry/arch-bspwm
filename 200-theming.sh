#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm

sudo pacman -S --noconfirm --needed \
    ttf-jetbrains-mono

sudo cp configs/Xresources /etc/skel/.Xresources
sudo cp configs/nord /etc/skel/.nord