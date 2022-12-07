#!/bin/bash

echo "Atualizando o Repositorio..."
apt-get update
apt-get upgrade -y

echo "Instalando apache..."
apt-get install apache2 -y
echo "Instalando unzip..."
apt-get install unzip -y
cd /tmp
echo "Clonando projeto do github..."
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Processo concluido com sucesso."

