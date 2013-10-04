#!/bin/sh

#
# install upstream phalcon
#
cd /home/vagrant
git clone https://github.com/phalcon/cphalcon.git
cd cphalcon/build/
sudo ./install

sudo cp -f /vagrant/files/etc/php5/conf.d/phalcon.ini /etc/php5/conf.d/

sudo chmod -R vagrant:vagrant /home/vagrant/cphalcon

# restart php5-fpm
/etc/init.d/php5-fpm restart


#
# phalcon developer tools
#
mkdir /home/vagrant/phalcon-devtools
cd /home/vagrant/phalcon-devtools
echo '{ "require": { "phalcon/devtools": "dev-master" } }' > composer.json
/home/vagrant/bin/composer install

ln -s /home/vagrant/phalcon-devtools/vendor/phalcon/devtools/phalcon.php /home/vagrant/bin/phalcon

sudo chmod -R vagrant:vagrant /home/vagrant/phalcon-devtools
sudo chmod -R vagrant:vagrant /home/vagrant/bin
