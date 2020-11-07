FROM php:7.4.9-fpm-alpine

WORKDIR /var/www/html
# ADD ./ /var/www/html

RUN apk update \
  && apk add icu-libs icu-dev \
  && docker-php-ext-configure intl \
  && docker-php-ext-install pdo pdo_mysql intl \
  && apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/ --allow-untrusted gnu-libiconv

ENV LD_PRELOAD /usr/lib/preloadable_libiconv.so php

RUN chown -R www-data:www-data ./ \
  && find ./ -type f -exec chmod 644 {} \; \
  && find ./ -type d -exec chmod 755 {} \;
  # && chmod -R ug+rwx ./storage ./bootstrap/cache \
  # && chgrp -R www-data ./storage ./bootstrap/cache

RUN curl -L https://github.com/hairyhenderson/gomplate/releases/download/v2.3.0/gomplate_linux-amd64-slim > /usr/local/bin/gomplate && \
  chmod u+x /usr/local/bin/gomplate

COPY ./ssmtp.conf.tmpl /ssmtp.conf.tmpl

RUN apt-get update && \
  apt-get install -y ssmtp && \
  apt-get clean && \
  echo 'sendmail_path = "/usr/sbin/ssmtp -t"' > /usr/local/etc/php/conf.d/mail.ini

ENV SSMTP_HOST=postfix
ENV SSMTP_PORT=25
ENV SSMTP_FROM_HOSTNAME=example.com
ENV SSMTP_USE_TLS=Yes
ENV SSMTP_USE_STARLTLS=Yes
ENV SSMTP_AUTH_USER=user
ENV SSMTP_AUTH_PASSWORD=password

ADD ./docker-entrypoint.sh /
RUN chmod u+x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]