FROM php:5.6.24-fpm-alpine
MAINTAINER Marco Antonio Martins Junior <somatorio@gmail.com>

ADD sessionsavepath.ini /usr/local/etc/php/conf.d/

VOLUME ["/novosga"]

WORKDIR /novosga

RUN apk --no-cache add gettext-dev postgresql-dev && \
docker-php-ext-install gettext pdo_mysql pdo_pgsql

ADD novosga /novosga

RUN chmod 777 /var/www/html/var && chmod 777 /var/www/html/config
