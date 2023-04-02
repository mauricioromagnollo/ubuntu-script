#!/bin/bash
chmod +x ubuntu.sh

source './src/common/apt.sh'
source './src/common/color-print.sh'
source './src/common/is-root.sh'

function ubuntu() {
  # Clear terminal
  clear

  # Install essential packages
  local ESSENTIAL_PACKAGES=("build-essential" "gnome-tweaks" "ubuntu-restricted-extras")
  apt-install-packages ${ESSENTIAL_PACKAGES[@]}

  # Auto install drivers
  color-print -green "[*] Autoinstall drivers..."
  sudo ubuntu-drivers autoinstall

  # Enable ufw firewall
  color-print -green "[*] Enable ufw firewall..."
  sudo ufw enable
}

ubuntu
