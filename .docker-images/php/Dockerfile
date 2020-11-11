FROM php:7.4.9-fpm-alpine

WORKDIR /var/www/html
# ADD ./ /var/www/html

RUN apk update \
  && apk add icu-libs icu-dev \
  && docker-php-ext-configure intl \
  && docker-php-ext-install pdo pdo_mysql intl \
  && apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted gnu-libiconv

RUN apk add --no-cache libpng libpng-dev && docker-php-ext-install gd && apk del libpng-dev

ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

RUN chown -R www-data:www-data ./ \
  && find ./ -type f -exec chmod 644 {} \; \
  && find ./ -type d -exec chmod 755 {} \;
  # && chmod -R ug+rwx ./storage ./bootstrap/cache \
  # && chgrp -R www-data ./storage ./bootstrap/cache
