FROM debian:buster
RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx openssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-keyout /etc/ssl/private/nginx-selfsigned.key \
	-out /etc/ssl/certs/nginx-selfsigned.crt \
	-subj "/C=FR/ST=Paris/L=Paris/O=42/OU=dodjian/CN=dodjian.42.fr"
COPY conf/nginx.conf /etc/nginx/sites-enabled/default
CMD [ "nginx", "-g", "daemon off;" ]
