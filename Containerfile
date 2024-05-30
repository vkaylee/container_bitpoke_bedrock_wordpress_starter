ARG TAG=6.5.3
FROM docker.io/bitpoke/wordpress-runtime:${TAG} AS wp
COPY config config
COPY composer.json composer.json
COPY composer.lock composer.lock
COPY web/index.php web/index.php
COPY web/wp-config.php web/wp-config.php
RUN composer install
