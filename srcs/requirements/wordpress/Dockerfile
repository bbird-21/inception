FROM debian:buster

RUN apt-get update
# UDPATE & INSTALLATION

RUN apt install -y wget

RUN apt install unzip php curl wget redis php-redis php-mysqli php-fpm php-cgi php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip -y
RUN apt install default-mysql-client -y

# RUN chown -R root:root /var/www/html


# To create the PID file (/run/php/php7.3-fpm.pid)
RUN mkdir /run/php

COPY ../tools/install.sh /home/

RUN chmod +x /home/install.sh

# To allow external connections
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

# To create index.php  
# COPY ./conf/index.php    /var/www/html/wordpress/index.php

# Is optional, just a metadata
EXPOSE 9000 

ENTRYPOINT ["/home/install.sh"]

