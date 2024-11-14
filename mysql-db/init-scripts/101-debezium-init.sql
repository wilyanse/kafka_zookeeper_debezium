-- Create the user
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';

-- Grant the necessary privileges
GRANT SELECT, RELOAD, SHOW DATABASES, REPLICATION SLAVE, REPLICATION CLIENT ON *.* TO 'user'@'localhost';

-- Apply the changes
FLUSH PRIVILEGES;