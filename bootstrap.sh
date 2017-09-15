#!/usr/bin/env bash

# Update packages
sudo apt-get -y update

# install PHP5 as Facebook PHP API is based on this version
# https://github.com/facebook/php-graph-sdk
sudo apt-get -y install php5 php5-mcrypt

# install Composer
sudo curl -s https://getcomposer.org/installer | php
sudo mv /home/vagrant/composer.phar /usr/local/bin/composer

# install facebook/graph-sdk
cd /vagrant
sudo composer require facebook/graph-sdk
