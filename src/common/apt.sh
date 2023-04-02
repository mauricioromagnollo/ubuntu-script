#!/bin/bash

source "./color-print.sh"

function apt-install-package() {
  local package="$1"
  color-print -green "[*] Installing $package..."
  sudo apt install $package -y
  sudo apt install -f -y
}

function apt-install-packages() {
  local packages=( $@ )
  for package in "${packages[@]}"
  do
    apt-install-package $package
  done
}

function apt-remove-package() {
  local package="$1"
  color-print -red "[!] Removing $package..."
  sudo apt remove $package -y
  sudo apt autoremove -y
  sudo apt autoclean -y
}

function apt-remove-packages() {
  local packages=( $@ )
  for package in "${packages[@]}"
  do
    apt-remove-package $package
  done
}

function apt-complete-update() {
  color-print -green "[*] Run complete update..."
  sudo apt update && sudo apt upgrade -y
}

function apt-deb-package-install() {
  local packageName="$1"
  local dirFile="$2"
  color-print -green "[*] Installing $packageName..."
  sudo dpkg -i $dirFile -y
  sudo apt install -f -y
}
