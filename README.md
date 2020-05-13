# Photocol Database Setup and Deployment
The following instructions are to deploy the Photocol webapp using `docker-compose` and containers. If you want to develop this app, it would be better to try following the instructions on the [photocol-website][1] and [photocol-server][2] READMEs.

### Setup instructions
Make sure `docker` and `docker-compose` are installed and the docker daemon is running.

###### Setup s3 credentials
Add `.env` file in the working folder (this directory). The format of the `.env` file should be as follows:
```env
ROOT_PASSWORD=[the password for mysql root user]
PHOTO_SERVER_PASSWORD=[the password for photo_server mysql user]
AWS_ID=[aws s3 access key]
AWS_KEY=[aws s3 private access key]
```

###### Setup (update) git subtree:
This pulls the latest changes from photocol-website and photocol-server into the `website/` and `server/` subfolders.
```bash
. ./tree && setup
```

Alternatively, if running on localhost:
```bash
. ./tree && setup lo
```

### Build instructions
###### Starting the image
Start the docker image (`-d` runs in detached mode):
```bash
sudo docker-compose up -d
```
This runs the website at :80, server at :6700, database at :6600, and adminer (database administration web client) at :8080.

Rebuild and run docker image.
```bash
sudo docker-compose up --build
```

To view the logs:
```bash
sudo docker logs [CONTAINER-NAME]
```
where `[CONTAINER-NAME]` is one of `frontend`, `backend`, `photocol_DB`.

###### Stopping the docker images
```bash
sudo docker-compose down
```

###### Reset Database
**BE CAREFUL**
```bash
rm -rf ../DB/*
```

[1]: https://github.com/photocol/photocol-website
[2]: https://github.com/photocol/photocol-server

Trying to trigger auto deploy, will delete later
