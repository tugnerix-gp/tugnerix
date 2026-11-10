#!/bin/bash
## 
## installiere notwendige Icon Sets und Themes
## auskommentierte Google Suche muss per Hand Hand durchgeführt werden
## Icon Theme Archive Downloaden von gnome-look.org und im ~/.tugnerix/icons Ordner entpacken

# ---------------------------------------------------------
# TEIL 1: ICON SETS VON GITHUB ODER GNOME_LOOK INSTALLIEREN
# ---------------------------------------------------------


mkdir -p ~/.tugnerix/icons
cd ~/.tugnerix/icons


##############
# Default-Look
##############

# Es gibt zwei Varianten, Buuf For Many Desktops (buuf-nestor) und Buuf (buuf), buuf-nestor wird im default look verwendet:

# !!!!!!!!!!!!!!!!!!!
# Buuf For Many Desktops ist notwendig!
# Buuf For Many Desktops (buuf-nestor) Icons
# Falls das Git Repository nicht funktioniert dann von Gnome-look manuell herunterladen
#Google Suche: site:gnome-look.org Buuf For Many Desktops Icons full theme
#git clone --depth 1 https://git.disroot.org/eudaimon/buuf-nestort.git

# Alternative, auskommentieren falls gewünscht.
# Buuf  Icons
#git clone --depth 1 https://github.com/oxayotl/buuf-icon-theme

###########
# Neon-Look
###########

# BeautyLine Icons
git clone --depth 1 https://github.com/gvolpe/BeautyLine

###########
# Irix-Look
###########

# SGIenhanced Icons, keine gtk3.0 Icon Set, es müsste erst daraus erzeugt werden!
# Diese Icons sehen auch nicht sehr schön aus, daher ersetzt durch KDE-Modern-Classic Icons
# Auskommentieren falls gewünscht, nicht notwendig.
#git clone --depth 1 https://github.com/jujum4n/sgi-enhanced

# !!!!!!!!!!!!!!!!
# Notwendig, muss per Hand installiert werden.
# KDE Modern Classic (by NZOOMED), schöne Icons die gut zu SGI Irix passen, da sie ähnlich den Irix Icons in einem 3D Stil gehalten sind
#Google Suche: site:gnome-look.org Modern Classic Icons full theme

# Alternative, download falls gewünscht.
# Ein erweitertes KDE Modern Classic Icon Set. Mit gefällt das einfache aber besser. 
#https://download.kde.org/Attic/4.14.3/src/kdeartwork-4.14.3.tar.xz

##########
# CDE-Look
##########

# es gibt zwei Icon Sets, CDE-Reborn und NsCDE, NsCDE wird standardmässig verwendet.

# Alternative, per Hand installieren falls gewünscht.
# CDE-Reborn Icons
#Google Suche: site:gnome-look.org CDE Icons full theme

# NsCDE Icon Set, kann aus einer git repository installiert werden:
git clone --depth 1 https://github.com/NsCDE/NsCDE

# Alternative, auskommentiern falls gewünscht. 
# oder ist in einem ganzen CDE Theme mit Panel in einem Unterordner enthalten:
#git clone --depth 1 https://github.com/netrunner01/cde

############
# Amiga-Look
############

# Alternative, auskommentieren falls gewünscht.
# Amiga MagicWB Icons, kein gtk icon theme, das müsste erst daraus erzeugt werden
# daher werden moderne Icons von dem Obsidian Theme verwendet.
# Obsidian wird über die Debian Paketverwaltung installiert
#git clone --depth 1 https://github.com/tanshoku/amiga-MWB-icons


###############
# Nextstep-Look
###############

# !!!!!!!!!!!!!!!!!!!!
# Notwendig, manuell installieren!
# GNUstep Icons
#Google Suche: site:gnome-look.org GNUstep Icons full theme


#################
# Windows NT-Look
#################

# Alternative
# Windows 2000 / SE98 Icons
#Google Suche: site:gnome-look.org SE98 Icons full theme
#git clone --depth 1 https://github.com/nestoris/Win98SE.git

# Chicago95 Icon Sets plus Theme
git clone --depth 1 https://github.com/grassmunk/chicago95

# Alternative
# WinClassic passierend auf Chicago95
#git clone --depth 1 https://github.com/matthewmx86/WinClassic_icons

# ----------------------------------------------------
# TEIL 2: GTK-THEMES INSTALLIEREN
# ----------------------------------------------------
mkdir -p ~/.tugnerix/themes
cd ~/.tugnerix/themes

# Irixium GTK-Theme (SGI/Irix Look)
git clone --depth 1 https://github.com/Pyanyaleri/Irixium

# CDE / Motif GTK-Theme (CDE Look)
git clone --depth 1 https://github.com/josvanr/cde-motif-theme

# GNUstep Theme (Nextstep-Look)
git clone --depth 1 https://github.com/raorn/OneStepBack

# Grau Themen (Default Look)
git clone --depth 1 https://github.com/gpetters94/Shades-of-gray-theme

