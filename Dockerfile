FROM php:7.4-apache
COPY . .
RUN sed -ri 's!:80!:8080!g' /etc/apache2/sites-available/*.conf