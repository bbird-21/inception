# Specifies the parent image. All subsequent commands will be based on   this parent image
FROM debian:buster

# Execute the commands when creating the image
RUN apt-get update
RUN apt-get install -y mariadb-server

# Copy the .cnf file of our host filesystem to the Docker container.
COPY 50-server.cnf /etc/mysql/mariadb.conf.d/

# Copy the script to the database
COPY script.sh /
RUN chmod +x /script.sh

ENTRYPOINT ["/script.sh"]
