FROM php:7.2-fpm

VOLUME /timezone

RUN rm -rfv /etc/localtime
RUN ln -sf /usr/share/zoneinfo/Etc/UTC /timezone/localtime
RUN ln -s /timezone/localtime /etc/localtime

RUN apt-get update -y\
    && apt-get install iputils-ping -y\
    && docker-php-ext-install mysqli && docker-php-ext-enable mysqli
