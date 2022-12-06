# inception

Introduction to Docker with the goal of containerizing a
WordPress with a client, a NGINX server and a MariaDB
database using docker-compose.

## Installation

docker: https://docs.docker.com/engine/install/ubuntu/

docker-compose: https://docs.docker.com/compose/install/

## Usage

```
docker-compose -f ./srcs/docker-compose.yml up --build -d
```
Connect to nginx server with installer wordpress in port 443:
- localhost:443 

Fill installer infos and log in.

That's it ! You have your own wordpress.

## Ressources:

VM: https://virtual-machines.github.io/Xubuntu-VirtualBox/

.RUN vs CMD vs ENTRY_POINT: https://www.geeksforgeeks.org/difference-between-run-vs-cmd-vs-entrypoint-docker-commands/#:~:text=A%20CMD%20command%20is%20used,the%20last%20one%20gets%20executed.

.env file: https://vsupalov.com/docker-arg-env-variable-guide/
