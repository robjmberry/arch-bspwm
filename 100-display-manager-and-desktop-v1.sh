#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm
#installing displaymanager or login manager
sudo pacman -S --noconfirm --needed lightdm
sudo pacman -S --noconfirm --needed lightdm-gtk-greeter

#installing desktop environment
sudo pacman -S bspwm sxhkd --noconfirm --needed
#enabling displaymanager or login manager
sudo systemctl enable lightdm.service -f
sudo systemctl set-default graphical.target
