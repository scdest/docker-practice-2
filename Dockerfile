FROM httpd:latest
RUN apt-get update &&  \
    apt-get install -y php php-mysql libapache2-mod-php && \
    apt-get install -y git
RUN git clone https://github.com/FaztWeb/php-mysql-crud.git /tmp/php-app
RUN cp -R /tmp/php-app/* /var/www/html
RUN rm /var/www/html/index.html
COPY db.php /var/www/html/db.php

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]