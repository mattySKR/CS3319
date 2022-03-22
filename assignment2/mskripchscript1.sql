SHOW DATABASES;

DROP DATABASE IF EXISTS mskripchassign2db;

CREATE DATABASE mskripchassign2db;

USE mskripchassign2db;

GRANT USAGE ON *.* TO 'ta'@'localhost';
DROP USER 'ta'@'localhost';
CREATE USER 'ta'@'localhost' IDENTIFIED BY 'cs3319';
GRANT ALL PRIVILEGES ON mskripchassign2db.* TO 'ta'@'localhost';
FLUSH PRIVILEGES;

SHOW TABLES;

CREATE TABLE westerncourse (number CHAR(6) NOT NULL, name VARCHAR(50) NOT NULL, weight CHAR(3) NOT NULL, suffix VARCHAR(3), PRIMARY KEY (number));

CREATE TABLE university (identitynum int NOT NULL, officialname VARCHAR(50) NOT NULL, city VARCHAR(15) NOT NULL, provincecode CHAR(2) NOT NULL, nickname VARCHAR(20) NOT NULL, PRIMARY KEY (identitynum));

CREATE TABLE outsidecourse (code CHAR(10) NOT NULL, identitynum int NOT NULL, name VARCHAR(50) NOT NULL, studentyear CHAR(1) NOT NULL, weight CHAR(3) NOT NULL, PRIMARY KEY (code, identitynum), FOREIGN KEY (identitynum) REFERENCES university(identitynum));

CREATE TABLE equivalents (number CHAR(6) NOT NULL, code CHAR(10) NOT NULL, identitynum int NOT NULL, decisiondate DATE NOT NULL, PRIMARY KEY (number, code), FOREIGN KEY (number) REFERENCES westerncourse(number) ON DELETE CASCADE, FOREIGN KEY (code) REFERENCES outsidecourse(code) ON DELETE CASCADE, FOREIGN KEY (identitynum) REFERENCES university(identitynum));

SHOW TABLES;

