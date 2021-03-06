Precise32 Virtual Machine for PhalconPHP Development
==============================================================

The setup includes:
-------------------
* box:       precise32 (http://files.vagrantup.com/precise32.box)
* PHP:       PHP 5.3
* WebServer: Nginx Light 1.4.1
* Phalcon: 1.2.3

Next steps:
-----------
If you have not installed Vagrant yet, go to http://downloads.vagrantup.com/

Clone this project:

    $ git clone git@github.com:racklin/phalcon-dev-box.git
    $ cd phalcon-dev-box
    
Boot up:

    $ vagrant up

Afterwards you may access your box with

    $ vagrant ssh

Web Contents:
-----------
Put your website in `www/` directory and vagrant is forward 8080 port to guest OS 80 port.
You can't open `http://localhost:8080/` in your Host OS browser.

PreInstalled Command-Line Tools:
-----------
* composer
* phalcon-dev-tools
* zephir


Enjoy!
