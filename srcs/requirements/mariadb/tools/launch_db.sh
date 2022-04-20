set -xve

service mysql start

echo "CREATE DATABASE dov;" | mysql
echo "CREATE USER 'dovuser'@'localhost' IDENTIFIED BY 'lol';" | mysql
echo "GRANT ALL PRIVILEGES ON dov.* TO 'dovuser'@'localhost';" | mysql
echo "FLUSH PRIVILEGES;" | mysql

service mysql stop
mysqld_safe
