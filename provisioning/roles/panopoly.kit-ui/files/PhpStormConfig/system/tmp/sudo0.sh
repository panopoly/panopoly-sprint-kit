#!/bin/sh
xdg-desktop-menu install --mode system "/tmp/jetbrains-phpstorm.desktop"
RV=$?
xdg-desktop-menu forceupdate --mode system
exit $RV
