#!/bin/bash
# update and upgrade
sudo apt-get update;sudo apt-get dist-upgrade -y
# install apache2 and apt-mirror
sudo apt-get install apache2 apt-mirror
# Change /etc/hosts
# Change sources.list
# Change mirror.list
# run the apt-mirror script.
# run the apt-mirror cleanup script.
# Set up a cron job for the apt-mirror.
# Set up the redirects.
