FROM debian:buster
RUN apt-get update
# UDPATE & INSTALLATION

RUN apt install -y wget

RUN apt install -y php-fpm\
 php7.3\
 php-mysql\
 mariadb-client

RUN wget https://fr.wordpress.org/wordpress-6.0-fr_FR.tar.gz

RUN echo "Hello" > Hello

RUN tar -xzf wordpress-6.0-fr_FR.tar.gz && rm wordpress-6.0-fr_FR.tar.gz

RUN chown -R root:root wordpress

# To create the PID file (/run/php/php7.3-fpm.pid)
RUN mkdir /run/php

# To allow external connections
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

# To create index.php  
COPY ./conf/index.php    /var/www/html/wordpress/index.php

# Is optional, just a metadata
EXPOSE 9000 

ENTRYPOINT ["/usr/sbin/php-fpm7.3","-F" ]

WORKDIR /var/www/html
