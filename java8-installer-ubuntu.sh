#!/bin/bash

# Instalem Java 8 per a ubuntu utilitzant els repositoris de web-upd8team
echo "=================================================="
echo "=================================================="
echo "Afegint ppa webupd8team/java"
echo "=================================================="
echo "=================================================="
sudo add-apt-repository ppa:webupd8team/java
echo "=================================================="
echo "=================================================="
echo "Actualitzant repositoris"
echo "=================================================="
echo "=================================================="
sudo apt-get update
echo "=================================================="
echo "=================================================="
echo "Instalant..."
echo "=================================================="
echo "=================================================="
sudo apt-get install oracle-java8-installer
echo "=================================================="
echo "=================================================="
echo "Seleccionant Java8 de Oracle com a jdk per defecte"
echo "=================================================="
echo "=================================================="
sudo apt-get install oracle-java8-set-default
echo "=================================================="
echo "=================================================="
echo "Comprovant...."
echo "=================================================="
echo "=================================================="
java -version
