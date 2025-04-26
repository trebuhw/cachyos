#!/bin/bash

# Przejście do głównego katalogu
cd ~/

# Sklonowanie repozytorium .dotfiles
git clone https://github.com/trebuhw/.dotfiles.git 

# Funkcja do usuwania katalogów lub plików
remove_items() {
    for item in "$@"; do
        if [[ -e $item ]]; then
            echo "Usuwanie: $item"
            rm -rv "$item"
        else
            echo "Pomijam, brak: $item"
        fi
    done
}

# Usunięcie katalogów ~/.config
config_dirs=(
    alacritty btop fastfetch fish foot gtk-2.0 gtk-3.0 gtk-4.0 hypr kitty
    mako mc nvim nsxiv qt5ct ranger rofi sublime-text swaylock Thunar
    waybar waypaper wlogout wofi wofifull xfce4 yazi zathura
)
remove_items "${config_dirs[@]/#/~/.config/}"

# Usunięcie katalogów ~/.icons
remove_items ~/.icons/default

# Usunięcie katalogów ~/.local/share
share_dirs=(mc rofi xfce4)
remove_items "${share_dirs[@]/#/~/.local/share/}"

# Usunięcie plików i katalogów w ~/
home_items=(~/.moc ~/.vscode ~/.gitignore ~/.vimrc ~/.Xresources)
remove_items "${home_items[@]}"

# Przejście do sklonowanego katalogu .dotfiles
cd ~/.dotfiles || { echo "Nie udało się przejść do katalogu ~/.dotfiles"; exit 1; }

# Wykonanie stow (utworzenie dowiązań symbolicznych)
for item in alacritty btop fastfetch fish foot gtk-2.0 gtk-3.0 gtk-4.0 hypr kitty \
            mako mc nvim nsxiv qt5ct ranger rofid starship sublime-text swaylock \
            Thunar waybar waypaper wlogout wofi wofifull xfce4 yazi zathura; do
    stow "$item"
done
