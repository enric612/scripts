#!/bin/bash

echo "------------------------------------------------------------"
echo "Instal·lant Pip"
echo "------------------------------------------------------------"
sudo apt-get install python-pip

#Actualitzem Pip
pip install -U pip


echo "------------------------------------------------------------"
echo "Instal·lant PowerLine"
echo "------------------------------------------------------------"
su -c 'pip install git+git://github.com/Lokaltog/powerline'

