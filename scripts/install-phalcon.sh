#!/bin/sh

#
# install upstream phalcon
#
cd /home/vagrant
git clone https://github.com/phalcon/cphalcon.git
cd cphalcon/build/
sudo ./install

sudo cp -f /vagrant/files/etc/php5/conf.d/phalcon.ini /etc/php5/conf.d/

# restart php5-fpm
/etc/init.d/php5-fpm restart
