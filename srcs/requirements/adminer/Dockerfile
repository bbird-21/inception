# Set up the parent image
FROM debian:buster

# Update and Installation
RUN apt-get update
RUN apt-get install -y adminer

# COPY THE CONF FILE 
COPY 000-default.conf /etc/apache2/sites-available/
RUN echo 'ServerName adminer' >> /etc/apache2/apache2.conf

# Start and conf
RUN service apache2 start && a2enconf adminer.conf

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
