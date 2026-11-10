#!/bin/bash

## Linux Kernel compilieren ?
## Achtung benötigt viel Zeit und viel Diskspace, 50G bis 100G !
## Auskommentierte Schritte sind von Hand durchzuführen

## Installiere benötigte Programme

sudo apt install \
     build-essential \
     flex \
     bison \
     autoconf \
     libncurses-dev \
     libssl-dev \
     libelf-dev \
     dwarves \
     bc

## Sollte auch durch nachvolgende Zeile durchführbar sein.
## Möglicherweise wird hier aber noch mehr installiert.
# sudo apt-get build-dep linux

## Kernel holen, konfigurieren und compilieren.
#mkdir -p ~/work/linux
#cd ~/work/linux
#apt-get source linux
#uname -r
#cp /boot/configVERSION .
#cd linux-VERSION
#cp ../configVERSION .config
#make menuconfig
#diff ../configVERSION .config
#make -j4 ## für 4 Kerne (parallele Threads)
