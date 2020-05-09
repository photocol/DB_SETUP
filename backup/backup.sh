#!/bin/sh
MCN=$MYSQL_CONTAINER_NAME
DB=$MYSQL_DATABASE
MU=$MYSQL_USER
MP=$MYSQL_PASSWORD

[ ! -d /backup ] && mkdir --parents /backup
DT=$(date +"%d+%H+%M")
MD=$(which mysqldump)
GZ=$(which gzip)
$MD -h $MCN -u$MU -p$MP --databases $DB | $GZ -9 > /backup/D-$DT.sql.gz

RM=/bin/rm;
XARGS=/usr/bin/xargs;
FIND=/usr/bin/find;
$FIND /backup -mmin +900 |$XARGS $RM -rf
