FROM php:7.4-apache
RUN docker-php-ext-install pdo_mysql

RUN apt-get update -y && apt-get install -y \
    libpng-dev \
    zlib1g-dev \
    libwebp-dev \
    libjpeg62-turbo-dev \
    libxpm-dev \
    libfreetype6-dev \
    libjpeg-dev 
  
RUN docker-php-ext-configure gd --with-jpeg=/usr/lib/x86_64-linux-gnu/

RUN docker-php-ext-install gd

RUN docker-php-ext-install exif

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

RUN a2enmod rewrite
