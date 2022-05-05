#!/bin/sh

sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply https://github.com/maschulze/fedora-bspwm-dotfiles

sudo dnf update

sudo dnf install git vim bspwm sddm picom thunar kitty nitrogen polybar sxhkd rofi fontawesome-fonts fontawesome-fonts-web firefox arandr alsa-utils lxpolkit pavucontrol light pipewire neofetch sddm-breeze wmname

sudo systemctl enable sddm
sudo systemctl set-default graphical.target

git clone --depth 1 https://github.com/ryanoasis/nerd-fonts
cd nerd-fonts
./install.sh FiraCode
./install.sh Meslo
cd ..
rm -rf nerd-fonts
