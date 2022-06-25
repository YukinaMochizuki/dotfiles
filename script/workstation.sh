#!/bin/bash

# Basic script

sudo pacman -S --noconfirm git unzip curl wget cmake python3-dev neofetch neovim openssh picom pacman-contrib
sudo ln -s /usr/bin/vim /usr/bin/vi

## Install yay

git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

## Bluetooth support

sudo pacman -S --noconfirm bluez bluez-utils pulseaudio-bluetooth
sudo systemctl start bluetooth.servicesudo
sudo systemctl enable bluetooth.servicesudo

# Develop Environment

sudo pacman -Syu nvm docker

# Display Environment

## Install graphics driver

sudo pacman -S --noconfirm xf86-video-intel nvidia nvidia-utils nvidia-settings lib32-nvidia-utils

## Install display manager, window manager amd Google CJK fonts

sudo pacman -S --noconfirm xorg i3-gaps i3lock i3status lightdm lightdm-gtk-greeter noto-fonts-cjk compton

## Let us have the most basic Internet capabilities first

sudo pacman -S --noconfirm chromium

## Terminal and application luncher

sudo pacman -S --noconfirm rxvt-unicode ranger dmenu rofi

## Terminal image support

sudo pacman -S --noconfirm w3m imlib2

## Sound support

sudo pacman -S --noconfirm alsa-utils pulseaudio pulseaudio-alsa pulseaudio-bluetooth pavucontrol mpd

## Chinese input support

sudo pacman -S --noconfirm ibus ibus-chewing

## RDP support

sudo pacman -S --noconfirm freerdp remmina

## Wallpaper support

sudo pacman -S --noconfirm feh

## Backlight change util

sudo pacman -S --noconfirm light

## Enable the display manager

sudo systemctl enable lightdm
sudo systemctl start lightdm

# Polybar

yay -S --noconfirm polybar

## CJK and color-emoji

sudo pacman -S --noconfirm noto-fonts-cjk noto-fonts-emoji

## Terminal fonts

sudo pacman -S --noconfirm ttf-bitstream-vera ttf-dejavu

## Polybar font

sudo pacman -S --noconfirm ttf-fantasque-sans-mono

yay -S --noconfirm nerd-fonts-complete

# Application

yay -S --noconfirm vivaldi vivaldi-ffmpeg-codecs notion-app-enhanced postman-bin

sudo pacman -S -noconfirm x2goclient libreoffice-fresh shutter playerctl autocutsel








