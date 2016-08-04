#!/bin/sh
set -e
sed -i "s/MYENV/${MYENV}/g" /var/www/html/index.php
exec "$@"
