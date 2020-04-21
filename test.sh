#!/bin/bash
docker kill photocol_DB
docker rm -f photocol_DB
docker build -t photocol .
docker run -d -p 6600:3306 --name photocol_DB photocol
docker exec -it photocol_DB bash
