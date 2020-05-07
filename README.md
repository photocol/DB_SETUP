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


Install docker

Install docker-compose

docker-compose up -d

(website at localhost:6700)

(server at localhost:6800)

(database at localhost:6600)

(manage at localhost:8080)


under directory ./

run ./clear.sh

then

sudo docker-compose up -d

to stop:

sudo docker-compose down

