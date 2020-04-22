#!/bin/bash
docker kill photocol_DB
docker rm -f photocol_DB
docker rmi -f photocol
#mysql -uphoto_server  -ppassword -h127.0.0.1 -P6600 -e 'show databases;';
#mysql -uroot  -pmypassword -h127.0.0.1 -P6600 -e 'show databases;';
