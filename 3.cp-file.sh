#!/bin/bash

## SDDM - themes i config (sprawdzić czy ln -s da radę)
# etc
/Archlinux-install/file/sddm.conf.d /etc
# usr
/Archlinux-install/file/simple-sddm /usr/share/sddm/themes


## Theme
# Catppucin gtk
Catppuccin-Mocha-Standard-Blue-Dark /usr/share/themes

## Pliki
#  Dokumenty
rsync -av ~/Archiwum/Linux/Dokumenty/* ~/Dokumenty

#  Muzyka
rsync -av ~/Archiwum/Linux/Muzyka/* ~/Muzyka

#  Obrazy
rsync -av ~/Archiwum/Linux/Obrazy/* ~/Obrazy
