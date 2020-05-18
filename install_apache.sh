#!/bin/bash
apt-get -y update
apt-get -y upgrade
apt-get -y autoremove

# install Apache2
apt-get -y install apache2
# write some HTML
mv /var/www/html/index.html /var/www/html/index-orig.html
h=$(hostname)
d=$(date)
echo \<center\>\<h1\>My Demo App on $h at $d\</h1\>\<br/\>\</center\> > /var/www/html/index.html
