#!/bin/sh
set -e

until mysqladmin ping -h"$MYSQL_HOST" -u"$MYSQL_USER" -p"$MYSQL_PASSWORD" --silent; do
  echo "Waiting for MariaDB..."
  sleep 2
done

exec docker-php-entrypoint apache2-foreground
