#!/bin/bash


wget https://dev.mysql.com/get/mysql-apt-config_0.8.16-1_all.deb
sudo dpkg -i mysql-apt-config_0.8.16-1_all.deb
sudo apt-get update

sudo apt install mysql-client mysql-community-server mysql-server
sudo mysql_secure_installation


sudo apt install apache2 php php-mysql libapache2-mod-php php-cli

# Allow to run Apache on boot up
sudo systemctl enable apache2

# Restart Apache Web Server
sudo systemctl start apache2

# Adjust Firewall
sudo ufw allow in "Apache Full"

# Allow Read/Write for Owner
sudo chmod -R 0755 /var/www/html/

sudo apt install php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip

sudo systemctl restart apache2

mysql -u root -p
