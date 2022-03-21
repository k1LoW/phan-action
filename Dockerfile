FROM php:8.1-cli

RUN apt-get update && apt-get install -y \
    unzip \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN pecl install ast && docker-php-ext-enable ast

ENV COMPOSER_ALLOW_SUPERUSER 1
ENV COMPOSER_NO_INTERACTION 1
ENV COMPOSER_HOME /opt/composer
ENV PATH $PATH:/opt/composer/vendor/bin

COPY --from=composer /usr/bin/composer /usr/bin/composer

RUN composer global require phan/phan

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
