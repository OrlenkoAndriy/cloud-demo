FROM ubuntu:20.04

RUN adduser wp-app

RUN apt update
RUN apt install -y unzip wget php-fpm nginx supervisor

RUN mkdir -p /var/www/wordpress
COPY ./src /var/www/wordpress
RUN chown -R wp-app:wp-app /var/www/wordpress

COPY ./configs/wp-app.conf /etc/php/7.4/fpm/pool.d/wp-app.conf
COPY ./configs/nginx /etc/nginx/sites-available/default
COPY ./configs/supervisord.conf /etc/sxupervisord.conf

CMD ["/usr/bin/supervisord", "-n"]
EXPOSE 80