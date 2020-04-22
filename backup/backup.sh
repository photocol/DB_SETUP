#!/bin/sh
MCN = $MYSQL_CONTAINER_NAME
DB = $MYSQL_DATABASE
MU = $MYSQL_USER
MP = $MYSQL_PASSWORD

[ ! -d /backup ] && mkdir --parents /backup
DT = $(date +%d)
MD = $(which mysqldump)
GZ = $(which gzip)
$MD -h $MCN -u $MU -p $MP --databases $MB | $GZ -9 > /backup/D-$DT.sql.gz
