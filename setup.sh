#!/bin/sh

sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply https://github.com/maschulze/fedora-bspwm-dotfiles

sudo dnf update

sudo dnf install git vim bspwm sddm picom thunar kitty nitrogen polybar sxhkd rofi fontawesome-fonts fontawesome-fonts-web firefox arandr alsa-utils lxpolkit pavucontrol light pipewire neofetch sddm-breeze wmname plymouth-theme-spinner

sudo systemctl enable sddm
sudo systemctl set-default graphical.target

sudo plymouth-set-default-theme spinner

sudo dracut -f -v

curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip -o FiraCode.zip
unzip FiraCode.zip -d .local/share/fonts/FiraCode

curl -L https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Meslo.zip -o Meslo.zip
unzip Meslo.zip -d .local/share/fonts/Meslo

fc-cache -vf
