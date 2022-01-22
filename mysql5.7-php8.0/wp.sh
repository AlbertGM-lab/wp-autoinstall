#!/bin/bash
clear
echo "============================================="
echo "El Sistema Operativo esta siendo actualizado!"
echo "============================================="
clear
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

clear
echo "====================================================="
echo "Las dependencias de Wordpress estan siendo instaladas"
echo "====================================================="
#Instalar tar y Apache2
sudo apt-get install git wget tar apache2 -y
#Instalar PHP 8.0 y sus dependencias
sudo apt-get install ca-certificates apt-transport-https software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt install php8.0 libapache2-mod-php8.0 -y
sudo apt-get install php8.0-mysqli php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y
sudo systemctl restart apache2
#Instalar MySQL 5.7 y configurarlo
clear
echo "==================="
echo "Instalando MySQL5.7"
echo "==================="
sudo apt-get install mysql-server -y
sudo mysql -u root -e "CREATE DATABASE wordpress;" -e "CREATE USER 'wordpressuser'@'%' IDENTIFIED WITH mysql_native_password BY 'xlbert1234@';" -e "GRANT ALL ON wordpress.* TO 'wordpressuser'@'%';" -e "FLUSH PRIVILEGES;"
clear
#Instalacion Wordpress
echo "=================================="
echo "Descargando e instalando Wordpress"
echo "=================================="
#Entrar y limpiar el directorio de Apache
cd /var/www/html
sudo rm -rf *
#Descargar Wordpress
wget https://wordpress.org/latest.tar.gz
sudo tar -xvzf latest.tar.gz
#Mover archivos a /var/www/html
cd wordpress
sudo mv * ..
#Borrar basura
cd ..
sudo rm -rf wordpress
sudo rm -rf latest.tar.gz
sudo git clone https://github.com/AlbertGM-lab/wp-autoinstall.git
cd wp-autoinstall
sudo mv wp-config.php ..
cd ..
sudo rm -rf wp-autoinstall
sudo chown www-data:www-data -R /var/www/html *
