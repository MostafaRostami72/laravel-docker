FROM php:8-fpm-alpine
WORKDIR /var/www/html
RUN docker-php-ext-install mysqli pdo pdo_mysql
