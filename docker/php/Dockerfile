FROM php:8.1-fpm

RUN apt update && \
    apt install -y mariadb-client zlib1g-dev libzip-dev vim && \
    docker-php-ext-install zip pdo_mysql opcache && \
    pecl install xdebug && \
    docker-php-ext-enable xdebug

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

RUN apt install -y npm \
    && npm install n -g \
    && n stable

COPY ./docker/php/php-fpm.conf /usr/local/etc/php-fpm.d/www.conf
COPY ./docker/php/php.development.ini /usr/local/etc/php/php.ini

WORKDIR /var/www/html
