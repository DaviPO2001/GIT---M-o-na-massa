#!/bin/sh
sudo apt update
echo "Instalando as dependencias do ansible"
sudo apt install software-properties-common
sudo add-apt-repository --yes --update ppa:ansible/ansible
echo "Instalando ansible"
sudo apt install ansible -y

sudo -i
cat <<EOT >> /etc/hosts
192.168.1.2 control-node
192.168.1.3 app01
192.168.1.4 db01
EOT
exit