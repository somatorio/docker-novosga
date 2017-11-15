FROM composer/composer:1.1-php5-alpine as build

RUN apk add --no-cache gettext-dev gettext && \
    docker-php-ext-install gettext

RUN mkdir /build/ && \
    composer create-project novosga/novosga /build

FROM php:5.6.24-apache
LABEL maintainer="Marco Antonio Martins Junior <somatorio@gmail.com>"

#Set a default timezone
ENV TZ="America/Sao_Paulo"

EXPOSE 80

RUN echo 'session.save_path = "/tmp"' > /usr/local/etc/php/conf.d/sessionsavepath.ini && \
    echo 'date.timezone = ${TZ}' > /usr/local/etc/php/conf.d/datetimezone.ini

RUN apt-get update && \
    apt-get install -y postgresql-server-dev-all --no-install-recommends && \
    docker-php-ext-install gettext pdo_mysql pdo_pgsql && \
    a2enmod rewrite && \
    apt-get remove -y --purge postgresql-server-dev-all && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY --from=build /build /var/www/html

RUN echo "RedirectMatch ^/$ /public" > .htaccess && \ 
    chown -R 33:33 /var/www/html