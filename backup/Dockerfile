FROM alpine:latest

WORKDIR ./
COPY ./backup.sh /etc/periodic/daily

ENV PACKAGES mariadb-client


RUN apk update && \
    apk upgrade && \
    apk add --no-cache $PACKAGES && \
    chmod a+x /etc/periodic/daily/*
