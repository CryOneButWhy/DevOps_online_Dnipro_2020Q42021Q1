#!/bin/bash
sudo apt-get update 
sudo apt-get install apache2 -y
sudo systemctl enable apache2
sudo apt-get install php libapache2-mod-php php-mcrypt php-mysql -y
sudo systemctl restart apache2
sudo rm /var/www/html/index.html
cd /vagrant 
sudo cp ./website/index.html /var/www/html

