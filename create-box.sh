#!/bin/bash

set -e

clean() {
  rm -rf output-virtualbox-iso || true
  git submodule update --init
}

desktop_build() {
  clean
  packer validate kit-box-desktop.json
  packer build kit-box-desktop.json
  if [ $? -ne 0 ]; then
    notify-send "Panopoly kit desktop failed to build"
  else
    notify-send "Panopoly kit desktop built"
  fi
}

vagrant_build() {
  clean
  packer validate kit-box-vagrant.json
  packer build kit-box-vagrant.json
  if [ $? -ne 0 ]; then
    notify-send "Panopoly kit vagrant box failed to build"
  else
    notify-send "Panopoly kit varant box built"
  fi
}

case $1 in
  "--help| -h")
    echo "Builds Panopoly kit boxes. Use desktop or vagrant as an argument"
    ;;
  "desktop")
    desktop_build
    ;;
  "vagrant")
    vagrant_build
    ;;
esac
