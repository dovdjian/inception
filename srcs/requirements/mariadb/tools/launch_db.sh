SETFILE=/var/lib/mysql/is_set.bool
set -xve

if [ ! -f "$SETFILE" ]; then
	service mysql start
	echo "CREATE DATABASE IF NOT EXISTS ${DB_NAME};" | mysql
	echo "CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';" | mysql
	echo "GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%';" | mysql
	echo "FLUSH PRIVILEGES;" | mysql
	echo "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('${DB_ROOT_PASSWORD}');" | mysql
	#echo "FLUSH PRIVILEGES;" | mysql
	#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '${DB_ROOT_PASSWORD}';" | mysql
	#mysql -e "CREATE DATABASE IF NOT EXISTS ${DB_NAME};"
	#mysql -e "CREATE USER IF NOT EXISTS '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASSWORD}';"
	#mysql -e "GRANT ALL ON ${DB_NAME}.* TO '${DB_USER}'@'%';"
	#mysql -e "FLUSH PRIVILEGES;"
	#mysql -e "SET PASSWORD FOR 'root'@'localhost' = PASSWORD('${DB_ROOT_PASSWORD}');"
	touch $SETFILE
	service mysql stop
fi
mysqld_safe
