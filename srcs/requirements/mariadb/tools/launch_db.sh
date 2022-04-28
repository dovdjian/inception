set -xve

service mysql start
DIR="/var/lib/mysql/mysql"

if [ -d "$DIR" ]; then
	echo "'$DIR' found"
else
	echo "CREATE DATABASE dov;" | mysql
	echo "CREATE USER 'dovuser'@'%' IDENTIFIED BY 'lol';" | mysql
	echo "GRANT ALL PRIVILEGES ON dov.* TO 'dovuser'@'%';" | mysql
	echo "FLUSH PRIVILEGES;" | mysql
fi
service mysql stop
mysqld_safe
