#!/bin/bash

echo "==> Installing GUI"
apt-get install -y ubuntu-desktop

USER=${SSH_USERNAME}
LIGHTDM=/etc/lightdm/lightdm.conf
GDM_CUSTOM=/etc/gdm/custom.conf

mkdir -p $(dirname ${GDM_CUSTOM})
echo "[daemon]" >> ${GDM_CUSTOM}
echo "AutomaticLoginEnable=True" >> ${GDM_CUSTOM}
echo "AutomaticLoginEnable=${USER}" >> ${GDM_CUSTOM}

echo "[SeatDefaults]" >> ${LIGHTDM}
echo "autologin-user=${USER}" >> ${LIGHTDM}
