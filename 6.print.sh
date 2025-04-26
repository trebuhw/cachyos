#!/bin/bash

# Instalacja programów
sudo pacman -S --noconfirm cups system-config-printer

# Włączaie i start usługi drukowania
sudo systemctl enable cups.service
sudo systemctl start cups.service

# Instalacja serowników drukarki yay lub paru
paru brother-dcp1610w #sterowniki drukarki

# Instalacja sterowników i start skanera
sudo pacman -S --noconfirm sane simple-scan # instalacja scanera
paru brscan4

# Dodanie skanera - podać model i adres drukarki/scanera, całość jako jedno polecenie
sudo brsaneconfig4 -a name=SCANNER_DCP1610W model=DCP-1610W ip=192.168.0.183 