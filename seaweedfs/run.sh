#!/bin/sh


echo "********************************************************"
echo "Starting Media Service";  /usr/bin/weed
echo "********************************************************"
sh -c 'openresty -p /var/www/archive-web/resty && /usr/bin/weed server -master.port=9333 -volume.port=9080 -dir="/data" -volume.publicUrl="localhost:9080" && tail -f /var/www/archive-web/resty/logs/error.log'