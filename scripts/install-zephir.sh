#!/bin/sh

#
# install upstream json-c
#
cd /tmp
git clone https://github.com/json-c/json-c.git
cd json-c
sh autogen.sh

./configure
make
sudo make install
rm -fr /tmp/json-c

#
# install upstream zephir
#
cd /home/vagrant
git clone https://github.com/phalcon/zephir.git
cd zephir
./install

sudo chown -R vagrant:vagrant /home/vagrant/zephir


# enable php-cli support dlopen for develop env
sudo cp -f /vagrant/files/etc/php5/cli/php.ini /etc/php5/cli/
