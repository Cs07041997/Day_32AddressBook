CREATE DATABASE addressBookService;
SHOW DATABASES;
USE addressBookService;
CREATE TABLE person (firstName VARCHAR(20) NOT NULL, lastName VARCHAR(20) NOT NULL,       /* TO CREATE TABLE */
		address VARCHAR(90) NOT NULL, city VARCHAR(25) NOT NULL, state VARCHAR(25) NOT NULL, 
        zip VARCHAR(6) , phoneNumber VARCHAR(10) ) ;
        
INSERT INTO addressbook VALUES ("CHANDAN", "SINGH", "RAMPUR", "BIRBHAN", "CHHAPRA", 841311, "7221804239");
describe addressBook;
select * FROM addressbook;
ALTER TABLE addressBook DROP COLUMN zip;
ALTER TABLE addressBook ADD COLUMN zip VARCHAR(6) AFTER state;
INSERT INTO addressbook VALUES ("CHANDAN", "SINGH", "RAMPUR", "BIRBHAN", "CHHAPRA", 841311, "7221804239");      /* TO ADD VALUES IN TABLE */
INSERT INTO addressbook VALUES ("Naveen","Patekar","Pune Maharashtra","Pune","MAharashtra",411030,"9876543210");
DELETE FROM addressbook WHERE firstName = "CHANDAN";
INSERT INTO addressbook  VALUES ("CHANDAN", "SINGH", "RAMPUR", "BIRBHAN", "CHHAPRA", 841311, "7221804239") ;
INSERT INTO addressbook VALUES ("PRATIK", "BHAI", "SOLAPUR MAHARASHTRA", "SOLAPUR", "MAHARASHTRA", "413315", "12313");      /* TO ADD VALUES IN TABLE */
UPDATE addressbook SET firstName = "Bilal", lastName = "shaikh", address = "kannad", city = "aurangabad", zip = 454501 WHERE firstName = "anzar" ;
INSERT INTO addressbook VALUES ("CHANDAN", "SINGH", "RAMPUR", "BIRBHAN", "CHHAPRA", 841311, "7221804239");
DELETE FROM addressbook WHERE firstName = "bilal";
INSERT INTO addressbook VALUES ("Saeem","shaikh","Chalisgaon","jalgao","Maharashtra",422030,"7744077082");
SELECT * FROM addressbook WHERE city = "aurangabad";
SELECT firstName, lastName FROM addressbook WHERE city = "aurangabad";
SELECT count(city or state) FROM addressbook;
SELECT city, firstName FROM addressbook ORDER BY (firstName);
ALTER TABLE addressbook ADD COLUMN relation VARCHAR(6) AFTER zip;  
ALTER TABLE addressbook ADD COLUMN name VARCHAR(6) AFTER zip;  
UPDATE addressbook SET name = 'Naveen', relation = 'friend' WHERE firstName = 'CHANDAN';
UPDATE addressbook SET name = 'Naveen', relation = 'family' WHERE firstName = 'CHANDAN';
ALTER TABLE addressbook CHANGE name name VARCHAR(20); 

ALTER TABLE addressbook CHANGE relation relation VARCHAR(20);

UPDATE addressbook SET name = 'kunal', relation = 'Profession,' WHERE firstName = 'Naveen';

SELECT count(relation) FROM addressbook;
SELECT * FROM addressbook;

CREATE TABLE Preson(ID INT AUTO_INCREMENT PRIMARY KEY, firstName VARCHAR(10), lastName VARCHAR (10), addressID INT);
use addressbookservice;
ALTER TABLE Preson RENAME TO personName; 
DELETE FROM personName WHERE ID = 1004;
INSERT INTO personName VALUES ('1001', "CHANDAN", "SINGH", '2001');
INSERT INTO personName (firstname, lastname , addressid) VALUES ('NAVEEN', 'PATEKAR', '2001');
INSERT INTO personName (firstname, lastname , addressid) VALUES ('RAO', 'DHOTRE', '2002');
INSERT INTO personName (firstname, lastname , addressid) VALUES ('BILAL', 'SHAIKH', '2003');
SELECT * FROM personName;
SELECT * FROM ADDRESS;
CREATE TABLE address(ID INT auto_increment primary key, CITY varchar(20), STATE varchar (20), ZIP varchar (20), PNONE bigint , PERSONID int); 
SELECT * FROM ADDRESS;

insert into address (ID, city,stATE, zip,pnone, personid) values ( 2001 ,'KANNAD', 'MAHARASHTA',431103,9503849559,1001);

insert into address ( city,STATE, zip,pnone, personid) values ( 'PUNE', 'MAHARASHTA',431103,123456789,1001);
insert into address ( city,STATE, zip,pnonE, personid) values ( 'AURANGABAD', 'MAHARASHTA',431103,123456789,1002);
insert into address ( city,STATE, zip,pnone, personid) values ( 'NAGAR', 'MAHARASHTA',431103,123456789,1003);

ALTER TABLE ADDRESS ADD foreign key (PERSONID) references PERSONNAME(ID);
ALTER TABLE personname ADD foreign key (addressID) references ADDRESS (ID);

select * from address inner join personname On  address.personId = personname.id ;