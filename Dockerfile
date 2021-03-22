FROM php:7.4-apache
RUN docker-php-ext-install pdo_mysql

RUN apt-get update -y && apt-get install -y libpng-dev zlib1g-dev 
RUN docker-php-ext-install gd

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN a2enmod rewrite
