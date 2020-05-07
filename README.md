# DB_SETUP

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
### Rebuild Docker network
```bash
sudo docker-compose up --build
```
### Reset Database:
```bash
rm -rf data/
```
