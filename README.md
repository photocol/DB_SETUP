# DB_SETUP

### Setup git subtree

```bash
. ./tree && setup
```
### pull subtree
default: website [dev]
default: server [endpointsv1]

```bash
. ./tree && pull
```
custom:
```bash
. ./tree && pull [server/website] [branch]
```

### push (subtree ignored, default: master)
```bash
. ./tree && push [branch]
```


```bash
sudo pacman -S docker

sudo pacman -S docker-compose

./clear.sh

sudo docker-compose up -d
```
(website at localhost:6700)

(server at localhost:6800)

(database at localhost:6600)

(manage at localhost:8080)

to stop:
```bash
sudo docker-compose down
```
