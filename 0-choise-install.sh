#!/bin/bash

cd ~/archlinux/CachyOs

# Wykonanie skryptów
echo "Uruchamianie skryptów..."
sh 1.dotfiles-ai.sh
sh 2.app.sh
sh 3.mount-arch-cp-file.sh
sh 4.ln-root-ai.sh
sh 5.virt.sh
sh 6.print.sh
sh 7.set-theme.sh

echo "Skrypty zostały uruchomione."
