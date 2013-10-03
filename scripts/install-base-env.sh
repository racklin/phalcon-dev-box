#!/usr/bin/env bash

# Pre-requisites
sudo apt-get -y update
sudo apt-get --no-install-recommends -y install python-software-properties openssl curl git-core sqlite3 pkg-config build-essential


# libs
sudo apt-get -y install libevent-dev


# servers
sudo apt-get -y install nginx-light rsync supervisor
cp -f /vagrant/files/etc/nginx/sites-available/default /etc/nginx/sites-available/
/etc/init.d/nginx restart



# php
sudo apt-get -y install php-apc php-pear php5-cgi php5-cli php5-common php5-curl php5-dev php5-fpm php5-gd php5-mcrypt php5-sqlite php5-pgsql

# install fpm's php.ini
sudo cp -f /vagrant/files/etc/php5/fpm/php.ini /etc/php5/fpm/

# php build-dep
sudo apt-get -y build-dep php5

# tools
sudo apt-get -y install zip vim re2c

#
# composer
#
mkdir /home/vagrant/bin
curl -sS https://getcomposer.org/installer | php -- --install-dir=/home/vagrant/bin
mv /home/vagrant/bin/composer.phar /home/vagrant/bin/composer
chown -R vagrant:vagrant /home/vagrant/bin

# copy files to home
cp -f /vagrant/files/dot/.bash_aliases /home/vagrant/
sudo chown vagrant:vagrant .bash_aliases

