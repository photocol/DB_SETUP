FROM mariadb:latest

WORKDIR ./
COPY ./script ./docker-entrypoint-initdb.d

ENV PACKAGES openssh-server openssh-client vim mariadb-client mysql-client
ENV MYSQL_DATABASE photocol
ENV MYSQL_ROOT_PASSWORD mypassword

RUN apt-get update && apt-get install -y $PACKAGES
RUN sed -i 's|^#PermitRootLogin.*|PermitRootLogin yes|g' /etc/ssh/sshd_config
#RUN /bin/bash -c 'chmod +x /script.sh' 
#ENTRYPOINT [ "/bin/sh", "/script.sh" ]
#CMD mysql -u root -p $MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < dbload.sql
#CMD mysql -u root -p $MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < testcase.sql
#CMD mysql -u root -p $MYSQL_ROOT_PASSWORD $MYSQL_DATABASE < grant.sql
