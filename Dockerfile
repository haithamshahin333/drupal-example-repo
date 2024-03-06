FROM drupal:10
RUN apt-get update \
    # Install libmagickwand-dev imagick package
    && apt-get install -y libmagickwand-dev git nano zip unzip \
    # use pecl to install imagick
    && pecl install imagick \
    && pecl install redis \
    # Enable you installed extension
    && docker-php-ext-enable imagick redis

RUN rm -rf /opt/drupal/*

WORKDIR /opt/drupal
COPY drupal-src .
RUN composer install