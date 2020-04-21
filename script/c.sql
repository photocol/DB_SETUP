GRANT USAGE ON *.* TO 'photo_server'@'%' IDENTIFIED BY 'password';
GRANT ALL privileges ON `photocol`.* TO 'photo_server'@'%';
ALTER USER 'root'@'localhost' IDENTIFIED BY 'mypassword';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'mypassword';


