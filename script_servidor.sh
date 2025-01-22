#!/bin/bash

echo "Atualizando Sistema..."
apt-get update
apt-get upgrade -y

echo  "Instalando Apache2..."
apt-get install apache2 -y

echo "Instalando o Unzip..."
apt-get install unzip -y

cd /tmp
echo "Baixando Arquivos do GitHUB"
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando e Copiando para Apache2"
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
echo "FIM" 
