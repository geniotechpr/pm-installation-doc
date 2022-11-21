#!/bin/bash

#Install NGINX
apt-get upgrade
add-apt-repository ppa:nginx/stable
apt-get update
apt-get install -y nginx

#Install PHP
add-apt-repository ppa:ondrej/php
apt-cache show php
apt-get install php8.1-cli php8.1-fpm php8.1-curl php8.1-gd php8.1-mysql php8.1-mbstring zip unzip
apt-get install php8.1-xml

#Install Redis
apt-get install redis

#Install SSH
apt-get install ssh

#Install Net-Tools
apt-get install net-tools

#Install Composer
apt purge composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/local/bin/composer

#Install NVM
apt-get install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
export NVM_DIR="$HOME/.nvm”
