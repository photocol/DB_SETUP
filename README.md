# DB_SETUP
### Setup s3 credentials

add .aws folder in working folder (not working)

### Setup git subtree:

```bash
. ./tree && setup
```
### pull subtree:
default: website [dev]
default: server [endpointsv1]

```bash
. ./tree && pull
```
custom:
```bash
. ./tree && pull [server/website] [branch]
```

### push (subtree ignored, default: master):
```bash
. ./tree && push [branch]
```

### Dependency:
```bash
sudo pacman -S docker

sudo pacman -S docker-compose

```
### Start:
```bash
./clear.sh

sudo docker-compose up -d
```
(website at localhost:6700)

(server at localhost:6800)

(database at localhost:6600)

(manage at localhost:8080)

### Stop:
```bash
sudo docker-compose down
```
### Rebuild Docker network (-d flag runs the docker network in detached mode)
```bash
sudo docker-compose up --build
```
### Basic docker commands:

#### show running container list: (-a shows all containers, -q only show container id)

docker ps 

#### remove all container:

docker rm -f $(docker ps -a -q)

#### remove all images:

docker rmi -f $(docker images -q)

#### see docker compose log:

docker-compose logs -t -f [name]
#### interactive terminal with container: (service can be bash/sh etc.)

docker exec -it [name] [service]

### Reset Database:
```bash
rm -rf data/
```
