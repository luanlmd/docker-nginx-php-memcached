FROM ubuntu:xenial

MAINTAINER Luan Almeida <luanlmd@gmail.com>

RUN apt update
RUN apt upgrade -y

RUN apt install ca-certificates nano nginx php php-fpm memcached php-memcached php-dom php-mbstring curl -y

RUN useradd docker
RUN adduser www-data docker

CMD /etc/init.d/memcached start && /etc/init.d/php7.0-fpm start && nginx -g "daemon off;"
