FROM debian:buster
WORKDIR /tmp
RUN apt-get update && apt-get upgrade -y && apt-get install -y mariadb-server procps
COPY tools/launch_db.sh .
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d
CMD ["sh", "launch_db.sh"]
