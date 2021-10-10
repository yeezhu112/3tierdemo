--  CREATE CONTACTS DB

DROP DATABASE IF EXISTS `contacts`;
CREATE DATABASE IF NOT EXISTS `contacts`;
USE `contacts`;

--  CREATE CONTACTS TABLE

CREATE TABLE `contacts_2` ( 
   'contactID'	 INT NOT NULL AUTO_INCREMENT,
   `firstName`   varchar (40) NOT NULL,
   `lastName`   varchar (40) NOT NULL,
   'Email'		varchar (40) NOT NULL,
    'phoneNo'	int,
    'university'	varchar (70),
    'major'			varchar (70),
    PRIMARY KEY ( contactID )
);

--  INSERT INTO CONTACTS

INSERT INTO `contacts` VALUES('Peter');
INSERT INTO `contacts` VALUES('Sam');

DROP DATABASE IF EXISTS `contacts`;
CREATE DATABASE IF NOT EXISTS `contacts`;
USE `contacts`;


CREATE TABLE `contacts` ( 
   contactID	 INT NOT NULL AUTO_INCREMENT,
   firstName   varchar (40) NOT NULL,
   lastName   varchar (40) NOT NULL,
   Email		varchar (40) NOT NULL,
   phoneNo	int,
   university	varchar (70),
   major			varchar (70),
    PRIMARY KEY ( contactID )
);

INSERT INTO `contacts` (firstName,lastName,Email, phoneNo,university,major )
VALUES ('Peter','Parker', 'peter@mit.edu',1111,'MIT','Mech Engr');

INSERT INTO `contacts` (firstName,lastName,Email, phoneNo,university,major )
VALUES ('Bruce','Wayne', 'bruce@bu.edu',2222,'BU','business');

INSERT INTO `contacts` (firstName,lastName,Email, phoneNo,university,major )
VALUES ('Diana','Prince', 'diana@bc.edu',3333,'bc','Biology');