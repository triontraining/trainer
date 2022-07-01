FROM php:7-apache
RUN apt-get update && apt-get install -y libcap2-bin && apt-get clean
RUN setcap 'cap_net_bind_service=+ep' /usr/sbin/apache2
COPY index.php /var/www/html
