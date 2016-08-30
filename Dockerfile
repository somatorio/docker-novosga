FROM php:5.6.24-fpm-alpine
MAINTAINER Marco Antonio Martins Junior <somatorio@gmail.com>

ADD novosga /novosga
ADD sessionsavepath.ini /usr/local/etc/php/conf.d/

VOLUME ["/novosga"]

RUN apk update && \
apk add gettext-dev postgresql-dev && \
docker-php-ext-install gettext pdo_mysql pdo_pgsql

