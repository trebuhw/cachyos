#!/bin/bash

# Pakiety zainstalowane tylko przeze mnie po instalacji CachyOs (wybrany desktop hyprland)
# Virt-Manager i potzrebne pakiety są instalowane razem ze skryptem instalacyjnym virt.sh
# Drukarka Brother DCP-1610W i potrzebne pakiety są instalowane razem ze skryptem instalacyjnym print.sh
#
#
# Install log save
exec > "$HOME/comai.txt" 2>&1
#
#
#
# Pacman
sudo pacman -needed --noconfirm acpi
sudo pacman -needed --noconfirm arc-gtk-theme
sudo pacman -needed --noconfirm azote
sudo pacman -needed --noconfirm btop
sudo pacman -needed --noconfirm code
sudo pacman -needed --noconfirm dunst
sudo pacman -needed --noconfirm file-roller
sudo pacman -needed --noconfirm floorp-bin
sudo pacman -needed --noconfirm foot
sudo pacman -needed --noconfirm galculator
sudo pacman -needed --noconfirm gimp
sudo pacman -needed --noconfirm gtk-engine-murrine
sudo pacman -needed --noconfirm gnome-disk-utility
sudo pacman -needed --noconfirm gsimplecal
sudo pacman -needed --noconfirm gvfs
sudo pacman -needed --noconfirm gvfs-afc
sudo pacman -needed --noconfirm gvfs-dnssd
sudo pacman -needed --noconfirm gvfs-gphoto2
sudo pacman -needed --noconfirm gvfs-mtp
sudo pacman -needed --noconfirm gvfs-nfs
sudo pacman -needed --noconfirm gvfs-smb
sudo pacman -needed --noconfirm htop
sudo pacman -needed --noconfirm iptables
sudo pacman -needed --noconfirm kitty
sudo pacman -needed --noconfirm libreoffice-fresh-pl
sudo pacman -needed --noconfirm lsd
sudo pacman -needed --noconfirm mako
sudo pacman -needed --noconfirm mkinitcpio-firmwar
sudo pacman -needed --noconfirm neovim
sudo pacman -needed --noconfirm nsxiv
sudo pacman -needed --noconfirm nwg-look
sudo pacman -needed --noconfirm polkit-gnome
sudo pacman -needed --noconfirm power-profiles-daemon
sudo pacman -needed --noconfirm speedtest-cli
sudo pacman -needed --noconfirm starship
sudo pacman -needed --noconfirm stow
sudo pacman -needed --noconfirm swappy
sudo pacman -needed --noconfirm swaybg
sudo pacman -needed --noconfirm Tela-circle-icon-theme-dracula
sudo pacman -needed --noconfirm thunar
sudo pacman -needed --noconfirm thunar-archive-plugin
sudo pacman -needed --noconfirm thunar-volman
sudo pacman -needed --noconfirm time
sudo pacman -needed --noconfirm timeshift
sudo pacman -needed --noconfirm tlp
sudo pacman -needed --noconfirm trash-cli
sudo pacman -needed --noconfirm ttf-jetbrains-mono-nerd
sudo pacman -needed --noconfirm tumbler
sudo pacman -needed --noconfirm vlc
sudo pacman -needed --noconfirm udiskie
sudo pacman -needed --noconfirm xorg-xhost
sudo pacman -needed --noconfirm yazi
sudo pacman -needed --noconfirm yt-dlp
sudo pacman -needed --noconfirm zathura
sudo pacman -needed --noconfirm zenity
sudo pacman -needed --noconfirm zoxide
#
# paru lub yay w zależności co zstało zainstalowane jeśli nic to:
#
# yay
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
#
# Paru
# sudo pacman -S --needed base-devel
# git clone https://aur.archlinux.org/paru.git
# cd paru
# makepkg -si
#
# 
yay bibata-cursor-theme
yay moc-pulse
yay ookla-speedtest-bin
yay simple-sddm-theme-git
yay sublime-text-4
yay waypaper

