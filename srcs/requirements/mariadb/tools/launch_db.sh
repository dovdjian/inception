set -xve

service mysql start

echo "CREATE DATABASE IF NOT EXISTS dov;" | mysql
echo "CREATE USER 'dovuser'@'%' IDENTIFIED BY 'lol';" | mysql
echo "GRANT ALL PRIVILEGES ON dov.* TO 'dovuser'@'%';" | mysql
echo "FLUSH PRIVILEGES;" | mysql

service mysql stop
mysqld_safe
