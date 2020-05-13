# DB_SETUP
### Setup s3 credentials
aha

add .env file in working folder

### Setup (update) git subtree:

```bash
. ./tree && setup
```
### to setup for localhost:
```bash
. ./tree && setup lo
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
sudo docker-compose up -d
```
(website at :1111)

(server at :6700)

(database at :6600)

(manage at :8080)

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
```bash
docker ps 
```
#### remove all container:
```bash
docker rm -f $(docker ps -a -q)
```
#### remove all images:
```bash
docker rmi -f $(docker images -q)
```
#### see docker compose log:
```bash
docker-compose logs -t -f [name]
```
#### interactive terminal with container: (service can be bash/sh etc.)
```bash
docker exec -it [name] [service]
```
### Reset Database:
```bash
rm -rf ../DB/*
```
