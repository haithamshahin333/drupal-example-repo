FROM drupal:10

RUN apt-get update \
    # Install libmagickwand-dev imagick package
    && apt-get install -y libmagickwand-dev git nano zip unzip dialog openssh-server \
    # use pecl to install imagick
    && pecl install imagick \
    && pecl install redis \
    # Enable you installed extension
    && docker-php-ext-enable imagick redis \
    && echo "root:Docker!" | chpasswd

COPY sshd_config /etc/ssh/
COPY entrypoint.sh /entrypoint.sh
RUN chmod u+x /entrypoint.sh

RUN rm -rf /opt/drupal/*

WORKDIR /opt/drupal
COPY drupal-src .
RUN composer install

ENV PATH=${PATH}:/opt/drupal/vendor/bin

EXPOSE 80 2222

ENTRYPOINT [ "/entrypoint.sh" ] 