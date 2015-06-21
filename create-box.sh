#!/bin/bash

set -e

rm -rf output-virtualbox-iso || true
git submodule update
packer validate kit-box.json
packer build kit-box.json
