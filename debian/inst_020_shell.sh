#!/bin/bash

## Installation von wenigen wichtigen Shell Programmen.

sudo apt install \
     firmware-linux-nonfree \
     nano \
     mc \
     htop \
     screenfetch \
     git \
     subversion \
     cvs \
     wget \
     rsync \
     ufw \
     vorbis-tools \
     zip \
     7zip \
     lhasa \
     bzip2

## Achtung, ssh client und server werden installiert
## und der ssh server gestartet.
## Auskommentiern falls ssh nicht instlliert werden soll.
sudo apt install \
     ssh
