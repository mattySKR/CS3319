select * from university;

LOAD DATA LOCAL INFILE 'university.txt' INTO TABLE university
FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"';

select * from university;

select * from westerncourse;

INSERT INTO westerncourse VALUES ('cs1026','Computer Science Fundamentals I','0.5','A/B');
INSERT INTO westerncourse VALUES ('cs1027','Computer Science Fundamentals II','0.5','A/B');
INSERT INTO westerncourse VALUES ('cs2210','Algorithms and Data Structures','1.0','A/B');
INSERT INTO westerncourse VALUES ('cs3319','Databases I','0.5','A/B');
INSERT INTO westerncourse VALUES ('cs2120','Modern Survival Skills I: Coding Essentials','0.5','A/B');
INSERT INTO westerncourse VALUES ('cs4490','Thesis','0.5','Z');
INSERT INTO westerncourse VALUES ('cs0020','Intro to Coding using Pascal and Fortran','1.0','');
INSERT INTO westerncourse VALUES ('cs4101','How To Make MySQL More Fun','0.5','A/B');

select * from westerncourse;


select * from university;
INSERT INTO university VALUES (19,'University of Computer Science','London','ON','UofCS');
select * from  university;


select * from outsidecourse;

INSERT INTO outsidecourse VALUES ('CompSci022',2,'Introduction to Programming','1','0.5');
INSERT INTO outsidecourse VALUES ('CompSci033',2,'Intro to Programming for Med students','3','0.5');
INSERT INTO outsidecourse VALUES ('CompSci021',2,'Packages','1','0.5');
INSERT INTO outsidecourse VALUES ('CompSci222',2,'Introduction to Databases','2','1.0');
INSERT INTO outsidecourse VALUES ('CompSci023',2,'Advanced Programming','1','0.5');
INSERT INTO outsidecourse VALUES ('CompSci011',4,'Intro to Computer Science','2','0.5');
INSERT INTO outsidecourse VALUES ('CompSci123',4,'Using UNIX','2','0.5');
INSERT INTO outsidecourse VALUES ('CompSci021',66,'Intro Programming','1','1.0');
INSERT INTO outsidecourse VALUES ('CompSci022',66,'Advanced Programming','1','0.5');
INSERT INTO outsidecourse VALUES ('CompSci319',66,'Using Databases','3','0.5');
INSERT INTO outsidecourse VALUES ('CompSci333',55,'Graphics','3','0.5');
INSERT INTO outsidecourse VALUES ('CompSci444',55,'Networks','4','0.5');
INSERT INTO outsidecourse VALUES ('CompSci022',77,'Using Packages','1','0.5');
INSERT INTO outsidecourse VALUES ('CompSci101',77,'Introduction to Using Data Structures','2','0.5');
INSERT INTO outsidecourse VALUES ('CompSci345',19,'Introduction to C#','3','0.5');
INSERT INTO outsidecourse VALUES ('CompSci007',19,'Advanced Topics In AI','4','0.5');

select * from outsidecourse;

select * from equivalents;

INSERT INTO equivalents VALUES ('cs1026','CompSci022',2,'2015-05-12');
INSERT INTO equivalents VALUES ('cs1026','CompSci033',2,'2013-01-02');
INSERT INTO equivalents VALUES ('cs1026','CompSci011',4,'1997-02-09');
INSERT INTO equivalents VALUES ('cs1026','CompSci021',66,'2010-01-12');
INSERT INTO equivalents VALUES ('cs1027','CompSci023',2,'2017-06-22');
INSERT INTO equivalents VALUES ('cs1027','CompSci022',66,'2019-09-01');
INSERT INTO equivalents VALUES ('cs2210','CompSci101',77,'1998-07-12');
INSERT INTO equivalents VALUES ('cs3319','CompSci222',2,'1990-09-13');
INSERT INTO equivalents VALUES ('cs3319','CompSci319',66,'1987-09-21');
INSERT INTO equivalents VALUES ('cs2120','CompSci022',2,'2018-12-10');
INSERT INTO equivalents VALUES ('cs0020','CompSci022',2,'1999-09-17');

select * from equivalents;

UPDATE equivalents SET decisiondate = '2018-09-19' WHERE number = 'cs0020';

select * from equivalents;

UPDATE outsidecourse SET studentyear = '1' WHERE outsidecourse.name LIKE "%Intro %";

select * from equivalents;

