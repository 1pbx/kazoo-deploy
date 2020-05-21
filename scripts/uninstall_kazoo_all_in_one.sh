#!/usr/bin/env bash 

#quick and dirty unintsall script. 



echo "Are you sure you want to stop all serveices and remove the kazoo packages and files? [y|n]"
read $question answer
if ! [[ $answer =~ [yY] ]];then 
    echo "Whew, scared me. Goodbye!"
    exit; 
fi

echo "Stopping Services"

systemctl stop kazoo-applications 
systemctop stop kazoo-ecallmgr
systemctl stop kazoo-haproxy 
systemctop stop kazoo-freeswitch
systemctl stop kazoo-bigcouch 
systemctop stop kazoo-rabbitmq
systemctl stop kazoo-kamailio 
systemctop stop httpd


echo "Removing Packages"

yum remove kazoo-configs kazoo-bigcouch kazoo-haproxy kazoo kazoo-freeswitch httpd kazoo-librabbitmq monster-ui* kazoo-applications*

echo "removing old directories"

rm -rf /etc/kazoo
rm -rf /etc/haproxy
rm -rf /srv
rm -rf /var/log/kamailio
rm -rf /var/log/httpd
rm -rf /var/log/freeswitch
rm -rf /var/log/haproxy.log 
rm -rf /var/log/2600hz-platform.log
rm -rf /var/log/bigcouch
rm /var/log/kazoo_install.log 
rm -rf /etc/httpd
rm -rf /var/lib/rabbitmq



