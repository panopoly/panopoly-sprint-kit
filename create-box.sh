#!/bin/bash

set -e

clean() {
  rm -rf output-virtualbox-iso || true
  git submodule update
}

desktop_build() {
  clean
  packer validate kit-box-desktop.json
  packer build kit-box-desktop.json
}

vagrant_build() {
  clean
  packer validate kit-box-vagrant.json
  packer build kit-box-vagrant.json
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
