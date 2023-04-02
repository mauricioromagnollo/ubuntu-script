#!/bin/bash

function obs-studio() {
  sudo apt install -y ffmpeg v4l2loopback-dkms
  sudo add-apt-repository ppa:obsproject/obs-studio -y
  sudo apt update
  sudo apt install -y obs-studio
}
