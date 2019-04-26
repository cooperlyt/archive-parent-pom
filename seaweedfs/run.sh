#!/bin/sh


echo "********************************************************"
echo "Starting media Service";
echo "********************************************************"
nohup /usr/bin/weed server -master.port=9333 -volume.port=9080 -dir="/data" -volume.publicUrl="127.0.0.1:9080" >>/var/www/media-server/resty/logs/error.log 2>&1 &
sh -c 'openresty -p /var/www/media-server/resty && tail -f /var/www/media-server/resty/logs/error.log'