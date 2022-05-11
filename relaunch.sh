make fclean
sudo docker volume rm $(docker volume ls -q)
sudo docker network rm $(docker network ls -q)
sudo rm -rf /home/dodjian/data/*
sudo mkdir -p /home/dodjian/data/mariadb_volume
sudo mkdir -p /home/dodjian/data/wordpress_volume
make
