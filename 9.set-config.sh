#!/bin/bash

# Specyficzne konfiguracje dla Arch Linux
arch_specific_configs() {
    log "Wykonywanie konfiguracji specyficznych dla Arch Linux..."
    
    # Zmiana powłoki shell
    if command -v fish &> /dev/null; then
        log "Zmiana powłoki na fish..."
        sudo chsh $USER -s /bin/fish && success "Powłoka zmieniona na fish. Wyloguj się, aby zastosować zmiany."
    fi
    
    # Włączanie i uruchamianie usług
    log "Konfiguracja usług systemowych..."
    sudo systemctl enable --now NetworkManager 
    sudo systemctl enable --now cups
    sudo systemctl enable sddm
    sudo systemctl enable tlp

# Konfiguracja pacman
    log "Konfigurowanie pacman..."
    if ! grep -q "Color" /etc/pacman.conf; then
        sudo sed -i 's/#Color/Color/' /etc/pacman.conf && success "Włączono kolorowe wyjście pacman."
    fi
    
    if ! grep -q "^ParallelDownloads" /etc/pacman.conf; then
    sudo sed -i '/\[options\]/a ParallelDownloads = 50' /etc/pacman.conf && success "Dodano ParallelDownloads = 50 do pacman.conf."
    else
    sudo sed -i 's/^#\?ParallelDownloads *= *.*/ParallelDownloads = 50/' /etc/pacman.conf && success "Ustawiono ParallelDownloads = 50 w pacman.conf."
    fi

    # Optymalizacja systemu
    log "Optymalizacja systemu Arch..."
    echo "vm.swappiness=10" | sudo tee /etc/sysctl.d/99-swappiness.conf > /dev/null
    
    # Optymalizacja SSD (jeśli jest)
    if [ -d "/sys/block/sda/queue/rotational" ] && [ "$(cat /sys/block/sda/queue/rotational)" -eq 0 ]; then
        log "Wykryto SSD, optymalizacja..."
        echo "vm.vfs_cache_pressure=50" | sudo tee -a /etc/sysctl.d/99-ssd.conf > /dev/null
        sudo systemctl enable fstrim.timer
    fi
}

# SDDM
[ -d /etc/sddm.conf.d ] && sudo mv /etc/sddm.conf.d/ /etc/sddm.conf.d.bak
sudo ln -sf ~/.dotfiles/etc/.config/sddm.conf.d /etc/sddm.conf.d

[ -d /usr/share/sddm/themes/simple-sddm ] && sudo mv /usr/share/sddm/themes/simple-sddm /usr/share/sddm/themes/simple-sddm.bak
sudo cp -r ~/.dotfiles/usr/.config/usr/share/sddm/themes/simple-sddm /usr/share/sddm/themes/simple-sddm

# TLP
[ -f /etc/tlp.conf ] && sudo mv /etc/tlp.conf /etc/tlp.conf.back
sudo ln -sf ~/.dotfiles/etc/.config/tlp.conf

# Dodanie czcionek
sudo fc-cache -fv

# Pytanie o reboot
read -p "Czy chcesz teraz zrestartować system? [y/N] " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]; then
    log "Restartuję system..."
    sudo systemctl reboot
fi

exit 0
