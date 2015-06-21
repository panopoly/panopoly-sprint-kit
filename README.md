# Panopoly Sprint Kit

The VM build uses packer.io to package virtual machines. Please read [this guide](https://packer.io/intro/getting-started/setup.html) to see how to install Packer.

### Building the virtual machine (desktop)

The VM build uses packer.io to turn ````kit-box-desktop.json```` into an OVA appliance.


Simply run ````./create-box.sh desktop```` to build the OVA appliance that can be imported into Virtual Box.

### Building the vagrant box

This is experimental still, as main focus is a desktop environment.

Run ````./create-box.sh vagrant```` to build a .box file that can be imported into Vagrant.
