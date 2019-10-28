#!/bin/bash
# update and upgrade
sudo apt-get update;sudo apt-get dist-upgrade -y
# install apache2 and apt-mirror
sudo apt-get install apache2 apt-mirror
# Change /etc/hosts
sudo cp hosts /etc/hosts
# Change sources.list
sudo cp sources.list /etc/apt/sources.list
# Change mirror.list
sudo cp mirror.list /etc/apt/mirror.list
# run the apt-mirror script.
su -c apt-mirror apt-mirror
# run the apt-mirror cleanup script.
/bin/bash /var/spool/apt-mirror/var/clean.sh
# Set up a cron job for the apt-mirror.

# Set up the redirects.
ln -s /var/www/html /var/spool/apt-mirror/mirror/packages.linuxmint.com/
ln -s /var/www/html/ubuntu /var/spool/apt-mirror/mirror/us.archive.ubuntu.com/ubuntu/
