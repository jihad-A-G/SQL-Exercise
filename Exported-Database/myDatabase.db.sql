BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS graduates (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    Name varchar(255)  UNIQUE ,
    Age INTEGER,
    Gender varchar(255),
    Points INTEGER,
	Graduation date
);
CREATE TABLE IF NOT EXISTS "students" (
	`ID`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`Name`	TEXT NOT NULL UNIQUE,
	`Age`	TEXT,
	`Gender`	TEXT,
	`Points`	INTEGER
);
INSERT INTO "graduates" ("ID","Name","Age","Gender","Points","Graduation") VALUES (1,'Layal',18,'F',350,'08/09/2018');
INSERT INTO "students" ("ID","Name","Age","Gender","Points") VALUES (1,'Alex','21','M',0),
 (2,'Basma','25','F',300),
 (3,'Hasan','30','M',150),
 (5,'Robert','34','M',500),
 (6,'Jana','33','F',500),
 (7,'Jihad','22','M',1500);
COMMIT;
