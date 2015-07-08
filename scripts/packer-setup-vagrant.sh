#!/bin/bash
echo "panopoly        ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
echo "vagrant         ALL=(ALL)       NOPASSWD: ALL" >> /etc/sudoers
sed -i "s/^.*requiretty/#Defaults requiretty/" /etc/sudoers
