#!/bin/sh

#
# This script will be placed in /config/init/ and run when container starts.
# It creates (if they're not exist yet) necessary directories
# from where custom Nginx configs can be loaded (from mounted /data volumes).
#

set -e

mkdir -p /data/log/nginx/
mkdir -p /data/run/nginx/
mkdir -p /data/conf/nginx/addon.d
mkdir -p /data/conf/nginx/conf.d
mkdir -p /data/conf/nginx/vhosts.d
mkdir -p /data/conf/nginx/nginx.d
chmod 711 /data/conf/nginx
chmod 711 /data/log/nginx
chmod 711 /data/run/nginx

mkdir -p /data/www/_default
echo "default vhost # created on $(date)" > /data/www/_default/index.html

#chown -R www:www /data/www
#chown -R www:www /data/log/nginx
#chown -R www:www /data/run/nginx
