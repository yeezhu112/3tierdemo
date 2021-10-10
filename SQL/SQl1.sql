--  CREATE CONTACTS DB

DROP DATABASE IF EXISTS `contacts`;
CREATE DATABASE IF NOT EXISTS `contacts`;
USE `contacts`;

--  CREATE CONTACTS TABLE

CREATE TABLE `contacts` (
   `firstName`   varchar (40)
);

--  INSERT INTO CONTACTS

INSERT INTO `contacts` VALUES('Peter');
