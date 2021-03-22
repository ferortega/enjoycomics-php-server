FROM php:7.4-apache
RUN docker-php-ext-install pdo_mysql
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN apt-get update & apt-get install php7.4-gd
RUN a2enmod rewrite
