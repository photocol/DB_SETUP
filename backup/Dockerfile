FROM alpine:latest

WORKDIR ./
COPY ./backup.sh /scripts/backup.sh

ENV PACKAGES mariadb-client

RUN apk update && \
    apk upgrade && \
    apk add --no-cache $PACKAGES
    
RUN chmod a+x /scripts/backup.sh
RUN rm -f /var/spool/cron/crontabs/root && \
    touch /var/spool/cron/crontabs/root && \
    (crontab -l ; echo "0       */3     *       *       *       /scripts/backup.sh") | crontab -
