#!/bin/bash

## Debian installieren.
## Debian Installer, Desktop Auswahl: !ALLES abwählen!, nur Standard Systemwerkzeuge ausgewählt lassen.
## Diese Script steht noch nicht zur Verfügung,
## es muss von Hand durchgeführt werden, es dient nur als Dokumentation
## für den Ablauf der Befehle!

su -l
apt update
apt upgrade
apt install sudo
usermod -aG sudo <user>
exit ##su
exit ##logout
##and login again
sudo apt install subversion
## Achtung, der .tugnerix Ordner ist nicht die Repository,
## in .tugnerix wird die repository zB als trunk abgelegt
## aber auch noch zu installierende Icons und Themes!
mkdir ~/.tugnerix
cd ~/.tugnerix
svn checkout svn://one/tugnerix/trunk
cd trunk/debian

# führe weiter Installations Scripte aus
