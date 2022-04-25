FROM debian:buster
WORKDIR /var/www
RUN apt-get update && apt-get upgrade -y && apt-get install -y php7.3 php-mysqli php-fpm wget mariadb-client
RUN wget https://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz
RUN mkdir -p /run/php
COPY conf/www.conf /etc/php/7.3/fpm/pool.d
COPY conf/wp-config.php wordpress
CMD ["php-fpm7.3", "-F", "-R"]
