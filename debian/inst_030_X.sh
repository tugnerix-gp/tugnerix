#!/bin/bash

## Installation von X Server und FVWM

sudo apt install \
     xorg \
     fvwm3 \
     feh \
     imagemagick \
     xosview \
     xscreensaver \
     xterm \
     kitty \
     alacritty \
     conky-std \
     stalonetray \
     volumeicon-alsa \
     alsa-utils \
     pipewire-audio \
     network-manager \
     network-manager-applet \
     pcmanfm \
     xdg-user-dirs \
     xdg-user-dirs-gtk \
     lxappearance \
     mate-themes \
     darkblood-gtk-theme \
     gnome-icon-theme \
     mate-icon-theme \
     obsidian-icon-theme \
     gvfs \
     gvfs-backends \
     ntfs-3g \
     udisks2 \
     engrampa \
     gparted \
     gsmartcontrol
	 

## Für grafisches Login muss lightdm installiert werden!
#sudo apt install \
#     lightdm


## Mehr icon themes, sind nicht unbeding notwendig.
#sudo apt install \
#     tango-icon-theme \
#     elementary-xfce-icon-theme \
#     papirus-icon-theme

#imagemagick wird von fvwm benötigt um xdg menu mit icons zu erstellen!
