CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'Mysql@123';

CREATE DATABASE auth;

GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

USE auth;

CREATE TABLE user(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)  -- Corrected PRIMARY KEY syntax
);

INSERT INTO user (email, password) VALUES ('saurabh@gmail.com', 'Admin123'); 
