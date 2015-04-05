#!/bin/bash

echo "------------------------------------------------------------"
echo "Reconfigurant plymouth, tria el splash per defecte"
echo "------------------------------------------------------------"
sudo update-alternatives --config default.plymouth

echo "------------------------------------------------------------"
echo "Actualitant initramfs..."
echo "------------------------------------------------------------"

sudo update-initramfs -u 


echo "------------------------------------------------------------"
echo "Fet!"
echo "------------------------------------------------------------"

