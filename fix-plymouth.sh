#!/bin/bash

echo "Tria una resolució adecuada per al grub: (Exemple 1920x1080)"
echo "Nota: Si no estas segur indica 1024x768"
read RESOLUCIO


echo "------------------------------------------------------------"

echo "Eliminant configuracions anterirors del GFXPAYLOAD"
sudo sed -i '/GFXPAYLOAD/d' /etc/default/grub

echo "Descomentant GFXMODE"
sudo sed -i 's/#GRUB_GFXMODE/GRUB_GFXMODE/g' /etc/default/grub

echo "Afegint configuració final"
sudo sed -i "s/GRUB_GFXMODE=.*/GRUB_GFXMODE=$RESOLUCIO\nGRUB_GFXPAYLOAD_LINUX=keep /g" /etc/default/grub

echo "Actualitzant grub ..."

sudo update-grub2

echo "Corregint FRAMEBUFFER"
sudo sed -i 's/FRAMEBUFFER.*/FRAMEBUFFER=y/g' /etc/initramfs-tools/conf.d/splash

echo "Actualitzant initramfs"
sudo update-initramfs -u


echo "------------------------------------------------------------"
echo "Fet!"
echo "------------------------------------------------------------"
