#!/bin/bash

## Installation von X Konfiguration und FVWM Konfiguration

## Repository sollte nach ~/.tugnerix/trunk ausgecheckt worden sein!
## Wir befinden uns im trunk/debian Ordner!
## !!!!!! muss vorher mit der Hand gemacht werden:
## 1) einen link ~/.fvwm auf ~/.tugnerix/trunk/.fvwm anlegen (empfohlen)
## oder 2) ~/.tugnerix/trunk/.fvwm nach ~/.fvwm kopieren (Updates und Commits gehen verloren)
## oder 3) .fvwm in ~/ auschecken
## !!!!!!

cp .xinitrc ~/
cp .xsession ~/
cp -r ../.config ~/
cp -r ../.emacs.d ~/
cp ../.clang-format ~/
cd ~/
ln -s ~/.fvwm/looklink/Xresources .Xresources

## Der X Server kann nun entweder mit startx oder lightdm gestartet werden.

## Verzeichnisstruktur im Homeverzeichnis anlegen
xdg-user-dirs-update
## oder als Gui Tool
#xdg-user-dirs-gtk-update

#####------------- end
## ~/.local/share/applications kopieren ?
## Nicht notwendig?
##update-desktop-database ~/.local/share/applications
