#!/bin/bash
docker kill photocol_DB
docker rm -f photocol_DB
docker rmi -f photocol
docker build -t photocol .
docker run -d -p 3302:3306 --name photocol_DB photocol
sleep 5
docker exec photocol_DB chmod 777 script.sh
docker exec photocol_DB ./script.sh
docker stop photocol_DB
docker start photocol_DB
docker exec -it photocol_DB bash
