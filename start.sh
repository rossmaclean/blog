#!/bin/bash

echo "=> Update nginx.conf"
sed -e "s,##APP_DOMAIN##,${CLOUDRON_APP_DOMAIN}," /app/code/nginx.conf  > /run/nginx.conf

echo "Starting Nginx"
#nginx -g 'daemon off;'
nginx -c /run/nginx.conf
#exec /usr/local/bin/gosu cloudron:cloudron nginx -g 'daemon off;'