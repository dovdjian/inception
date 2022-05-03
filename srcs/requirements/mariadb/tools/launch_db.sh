set -xve

if [ ! -d "/var/lib/mysql/mysql" ]; then
	service mysql start
	echo "CREATE DATABASE $DB_NAME;" | mysql
	echo "CREATE USER '$DB_USERNAME'@'%' IDENTIFIED BY '$DB_PASSWORD';" | mysql
	echo "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USERNAME'@'%';" | mysql
	echo "FLUSH PRIVILEGES;" | mysql
	echo "ALTER USER 'root'@'%' IDENTIFIED BY '$DB_ROOT_PASSWORD';" | mysql
	service mysql stop
fi
mysqld_safe
