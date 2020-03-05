#!/bin/bash
set -e

sudo pacman -Syyu --noconfirm

pacman -S ca-certificates ca-certificates-cacert ca-certificates-mozilla ca-certificates-utils --noconfirm

yay -S --noconfirm visual-studio-code-bin
yay -S --noconfirm nordic-theme-git
yay -S --noconfirm spotify
yay -S --noconfirm vmware-horizon-client
yay -S --noconfirm plex-media-server-plexpass