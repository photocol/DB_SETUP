# Photocol Database

Make sure you have [MariaDB][1] installed and running.

### Granting access
Make sure to run this to set the correct permissions for the server.
```
GRANT USAGE ON *.* TO 'photo_server'@'localhost' IDENTIFIED BY 'password';
GRANT ALL privileges ON `photocol`.* TO 'photo_server'@localhost;
```

### Running scripts
Run only the necessary scripts.
```
bash$ mysql -u root -p;             # log into mysql
mariadb$ source ./deleteall.sql;    # drop all photocol tables. CAREFUL!
mariadb$ source ./dbload.sql;       # initialize photocol tables
mariadb$ source ./testcase.sql;     # create photocol testcases
```

[1]: https://wiki.archlinux.org/index.php/MariaDB
