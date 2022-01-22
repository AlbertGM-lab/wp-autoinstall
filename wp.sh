#!/bin/bash
clear
echo "============================================="
echo "El Sistema Operativo esta siendo actualizado!"
echo "============================================="
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get dist-upgrade -y

clear
echo "====================================================="
echo "Las dependencias de Wordpress estan siendo instaladas"
echo "====================================================="
#Instalar tar y Apache2
sudo apt-get install git wget tar apache2 -y

#Instalar PHP 8.0 y sus dependencias
clear
sudo apt-get install ca-certificates apt-transport-https software-properties-common -y
sudo add-apt-repository ppa:ondrej/php -y
sudo apt install php8.0 libapache2-mod-php8.0 -y
sudo apt-get install php8.0-mysqli php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y
sudo systemctl restart apache2

#Instalar MySQL 5.7 y configurarlo
clear
sudo apt-get install mysql-server -y
sudo mysql -u root -e "CREATE DATABASE wpdb;" -e "CREATE USER 'wpdbuser'@'%' IDENTIFIED WITH mysql_native_password BY 'WpDbPassW0rd01@!.';" -e "GRANT ALL ON wpdb.* TO 'wpdbuser'@'%';" -e "FLUSH PRIVILEGES;"
#MCambiar contraseña root MySQL
sudo mysql -e "UPDATE mysql.user SET Password = PASSWORD('R00tPassW0rD0666.@!') WHERE User = 'root'"
#Inhabilitar acceso anonimo a MySQL
sudo mysql -e "DROP USER ''@'localhost'"
#Borrar Base de Datos por defecto
sudo mysql -e "DROP DATABASE test"
#Guardar Cambios
sudo mysql -e "FLUSH PRIVILEGES"

clear
#Instalacion Wordpress
echo "=================================="
echo "Descargando e instalando Wordpress"
echo "=================================="
#Entrar y limpiar el directorio de Apache
cd /var/www/html
sudo rm -rf *

clear
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
clear
