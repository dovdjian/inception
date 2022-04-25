FROM debian:buster
RUN apt-get update && apt-get upgrade -y && apt-get install -y nginx openssl
#RUN openssl req -new -key
COPY conf/nginx.conf /etc/nginx/sites-enabled/default
CMD [ "nginx", "-g", "daemon off;" ]
