FROM debian:buster
WORKDIR /tmp
RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server
COPY tools/launch_db.sh .
CMD ["sh", "launch_db.sh"]
