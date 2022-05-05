#!/bin/sh

sh -c "$(curl -fsLS chezmoi.io/get)" -- init --apply https://github.com/maschulze/fedora-bspwm-dotfiles

sudo dnf update

sudo dnf install git vim bspwm sddm picom thunar kitty nitrogen polybar sxhkd rofi fontawesome-fonts fontawesome-fonts-web firefox arandr alss-utils lxpolkit pavucontrol light pipewire

sudo systemctl enable sddm
sudo systemctl set-default graphical.target
