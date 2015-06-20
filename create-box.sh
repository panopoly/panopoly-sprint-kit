#!/bin/bash

set -e

#export PACKER_LOG=1
rm packer_virtualbox-iso_virtualbox.box || true
packer validate kit.json
packer build kit.json
