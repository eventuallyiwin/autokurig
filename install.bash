#!/bin/bash

APPNAME="autokurig"
echo $APPNAME
APPDIR="/home/pi/$APPNAME"
echo $APPDIR
cd $APPDIR
sudo git pull
sudo cp $APPDIR/$APPNAME.conf /etc/apache2/sites-available/$APPNAME.conf
sudo service apache2 restart
# sudo a2ensite /etc/apache2/sites-available/$APPNAME.conf