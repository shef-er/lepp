FROM php:8.1-fpm

ARG DC_USER_ID
ARG DC_GROUP_ID

ARG IMAGICK_VERSION=3.7.0
ARG ZIP_VERSION=1.20.0
ARG XDEBUG_VERSION=3.1.1
ARG COMPOSER_VERSION=2.1.11

RUN apt-get update \
    && apt-get install -y apt-utils curl git

RUN apt-get install -y libcurl4-openssl-dev \
    &&  docker-php-ext-install curl

RUN apt-get install -y imagemagick libmagickwand-6.q16-dev \
    && pecl install imagick-${IMAGICK_VERSION} \
    && docker-php-ext-enable imagick

RUN apt-get install -y libicu-dev \
    &&  docker-php-ext-install intl

RUN docker-php-ext-install opcache

RUN apt-get install -y libpq-dev \
    && docker-php-ext-install pdo_pgsql

RUN pecl install xdebug-${XDEBUG_VERSION} \
    && docker-php-ext-enable xdebug

RUN apt install -y libzip-dev \
    && pecl install zip-${ZIP_VERSION} \
    && docker-php-ext-enable --ini-name 20-zip.ini zip

RUN php -r "readfile('https://getcomposer.org/installer');" | php -- \
    --install-dir=/usr/local/bin --filename=composer --version=${COMPOSER_VERSION}

RUN usermod -u $DC_USER_ID www-data \
    && groupmod -g $DC_GROUP_ID www-data

USER "$DC_USER_ID:$DC_GROUP_ID"

WORKDIR /web
