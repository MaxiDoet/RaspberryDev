#!/bin/sh
echo "Updating Raspian"
sudo apt-get update
sudo apt-get upgrade

echo "Installing Desktop"
sudo apt-get install xorg lightdm xfce4

echo "Installing Dev Essentials"
sudo apt-get install git npm
echo "Installing NodeJS"
sudo curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
sudo nvm install 14.11.0
echo "Installing Desktop Tools (Terminal Emulator,...)"
sudo apt-get install konsole
sudo apt-get install plank
sudo apt-get install chromium

echo "Installing Themes"
cp -r Dracula /usr/share/themes/
xfconf-query -c xsettings -p /Net/ThemeName -s "Drakula"

