#!/bin/bash

echo "atualizando pacotes..."
apt update -y

echo "instalando Apache..."
apt install -y apache2

echo "Copiando arquivos do site..."
rm -rf /var/www/html/*
cp -r /vagrant/html/* /var/www/html

echo "Iniciando Apache..."
systemctl enable apache2
systemctl restart apache2
