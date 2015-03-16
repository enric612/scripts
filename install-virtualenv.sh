#!/bin/bash

echo "Actualitzant sistema"
sudo apt-get update

echo "Instalant dependencies"
sudo apt-get install python-setuptools python-dev build-essential git-core -y

echo "Executant easy_install i pip"

sudo easy_install pip

echo "Instalant virtualenv"
sudo pip install virtualenv

echo "Instalant virtualenvwrapper"
sudo pip install virtualenvwrapper

echo "Creant directoris"
mkdir ~/.virtualenvs/

echo "Configurant bash y zsh"
echo "export #===============================" >> ~/.bashrc
echo "export virtualenv" >> ~/.bashrc
echo "export #===============================" >> ~/.bashrc
echo "export WORKON_HOME=~/virtualenvs" >> ~/.bashrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.bashrc
echo "export PIP_VIRTUALENV_BASE=~/virtualenvs" >> ~/.bashrc 
source ~/.bashrc 

echo "export #===============================" >> ~/.zshrc
echo "export virtualenv" >> ~/.zshrc
echo "export #===============================" >> ~/.zshrc
echo "export WORKON_HOME=~/virtualenvs" >> ~/.zshrc
echo "source /usr/local/bin/virtualenvwrapper.sh" >> ~/.zshrc
echo "export PIP_VIRTUALENV_BASE=~/virtualenvs" >> ~/.zshrc
source ~/.zshrc


