#!/bin/sh
echo "********************************************************"
echo "Waiting for the Web Client to start  on port $ZUUL_PORT"
echo "********************************************************"
while ! `nc -z zuulserver $ZUUL_PORT`; do sleep 3; done
echo ">>>>>>>>>>>> Eureka Server has started"

echo "********************************************************"
echo "Starting Web Client";
echo "********************************************************"
sh -c 'openresty -p /var/www/archive-web/resty && tail -f /var/www/archive-web/resty/logs/error.log'