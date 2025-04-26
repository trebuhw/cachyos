#!/bin/bash

# Ustawienie konfiguracji programów root
[ -d /root/.config ] && sudo mv /root/.config /root/.config.bak
sudo mkdir -p /root/.config/
sudo ln -sf /home/hubert/.dotfiles/yazi/.config/yazi/ /root/.config/yazi
sudo ln -sf /home/hubert/.local/share/fish/ /root/.local/share/fish
sudo ln -sf /home/hubert/.dotfiles/fish/.config/fish/ /root/.config/fish
sudo ln -sf /home/hubert/.dotfiles/vim/.vimrc /root/.vimrc
sudo ln -sf /home/hubert/.dotfiles/vim/.viminfo /root/.viminfo
sudo ln -sf /home/hubert/.dotfiles/ranger/.config/ranger/ /root/.config/ranger
sudo ln -sf /home/hubert/.dotfiles/nvim/.config/nvim/ /root/.config/nvim
sudo ln -sf /home/hubert/.dotfiles/mc/.local/share/mc /root/.local/share/mc
sudo ln -sf /home/hubert/.dotfiles/mc/.config/mc /root/.config/mc
sudo ln -sf /home/hubert/.dotfiles/gtkrc-2.0/ /root/gtk-2.0
sudo ln -sf /home/hubert/.dotfiles/gtk-4.0/.config/gtk-4.0/ /root/.config/gtk-4.0
sudo ln -sf /home/hubert/.dotfiles/gtk-3.0/.config/gtk-3.0/ /root/.config/gtk-3.0
sudo ln -sf /home/hubert/.dotfiles/gtk-2.0/.config/gtk-2.0/ /root/.config/gtk-2.0
sudo ln -sf /home/hubert/.dotfiles/bash/.bash_logout /root/.bash_logout 
sudo ln -sf /home/hubert/.dotfiles/bash/.bash_profile /root/.bash_profile 
sudo ln -sf /home/hubert/.dotfiles/bash/.bashrc /root/.bashrc
