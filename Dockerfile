FROM mariadb:latest

WORKDIR ./
COPY . .

ENV PACKAGES openssh-server openssh-client
ENV MYSQL_DATABASE photocol
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

RUN apt-get update && apt-get install -y $PACKAGES
RUN sed -i 's|^#PermitRootLogin.*|PermitRootLogin yes|g' /etc/ssh/sshd_config
