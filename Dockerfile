 
FROM php:7.4.5-apache

COPY . .

# RUN apt-get update
# RUN docker-php-ext-install zip && docker-php-ext-configure intl && docker-php-ext-install intl
# RUN a2enmod rewrite
# RUN sed -i 's/AllowOverride None/AllowOverride All/' /etc/apache2/apache2.conf

RUN sed -i 's/80/${PORT}/g' /etc/apache2/sites-available/000-default.conf /etc/apache2/ports.conf