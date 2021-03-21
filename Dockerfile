FROM php:7.4-apache
RUN docker-php-ext-install pdo_mysql
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"
RUN a2enmod rewrite
