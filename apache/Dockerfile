FROM php:5.6.24-apache
MAINTAINER Marco Antonio Martins Junior <somatorio@gmail.com>

ADD sessionsavepath.ini /usr/local/etc/php/conf.d/

RUN apt-get update && \
apt-get install -y postgresql-server-dev-all --no-install-recommends && \
docker-php-ext-install gettext pdo_mysql pdo_pgsql && \
a2enmod rewrite && \
apt-get apt-get remove -y --purge postgresql-server-dev-all && \
apt-get clean && \
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD novosga /var/www/html
