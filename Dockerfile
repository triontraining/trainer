FROM php:7-apache
RUN apt update && apt install -y libcap2-bin && apt clean-cache
RUN setcap 'cap_net_bind_service=+ep' /usr/sbin/apache2
COPY index.php /var/www/html
