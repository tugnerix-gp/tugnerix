#!/bin/bash
## 
## Symlinks für Icons und Themes erzeugen.

# ---------------------------------------------------------
# TEIL 1: ICON SETS VON GITHUB ODER GNOME_LOOK INSTALLIEREN
# ---------------------------------------------------------

mkdir -p ~/.local/share/icons

# erzeuge symbolische Links
# -------------------------
cd ~/.local/share/icons
ln -s ~/.tugnerix/icons/buuf-for-many-desktops
ln -s ~/.tugnerix/icons/BeautyLine/BeautyLine
ln -s ~/.tugnerix/icons/KDE-Modern-Classic
ln -s ~/.tugnerix/icons/GNUstep
ln -s ~/.tugnerix/icons/chicago95/Icons/Chicago95


# ----------------------------------------------------
# TEIL 2: GTK-THEMES INSTALLIEREN
# ----------------------------------------------------

mkdir -p ~/.local/share/themes

# erzeuge symbolische Links
# -------------------------
cd ~/.local/share/themes
ln -s ~/.tugnerix/themes/Shades-of-gray-theme/Shades-of-gray-Orient
ln -s ~/.tugnerix/themes/Irixium
ln -s ~/.tugnerix/themes/cde-motif-theme/cdetheme
ln -s ~/.tugnerix/themes/cde-motif-theme/cdetheme-solaris
ln -s ~/.tugnerix/themes/OneStepBack
