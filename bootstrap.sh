#!/usr/bin/env bash

# Install base part
apt-get -qq update
apt-get -qq upgrade
apt-get -qq install git cron nano curl htop apt-transport-https

# Install MySQL
apt-get -qq install mysql-server

# Install Nginx
apt-get -qq install nginx

# Install php 7.0
apt-get -qq purge php5*
echo 'deb http://packages.dotdeb.org jessie all' > /etc/apt/sources.list.d/dotdeb.list
apt-get -qq install apt-transport-https
curl http://www.dotdeb.org/dotdeb.gpg | apt-key add -
apt-get -qq update
apt-get -qq upgrade
apt-get -qq install php7.0 php7.0-fpm 
apt-get -qq install php7.0-cli php7.0-curl php7.0-gd php7.0-geoip php7.0-intl php7.0-json php7.0-mbstring
apt-get -qq install php7.0-mcrypt php7.0-mysql php7.0-opcache php7.0-readline php7.0-xml php7.0-xsl php7.0-zip

# Downloading and Installing Composer
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer
