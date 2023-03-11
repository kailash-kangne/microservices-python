-- comment
CREATE USER 'auth_user'@'localhost' IDENTIFIED BY 'root';

CREATE DATABASE auth;

GRANT ALL PRIVILEGES ON auth.* TO 'auth_user'@'localhost';

Use auth;

CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    email  VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

INSERT INTO user (email, password) VALUES ('admin@gmail.com','admin');



