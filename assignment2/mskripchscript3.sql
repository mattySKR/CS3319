-- Query 1
SELECT name FROM westerncourse;

-- Query 2
SELECT DISTINCT code FROM outsidecourse;

-- Query 3
SELECT * FROM westerncourse ORDER BY name ASC;

-- Query 4
SELECT number, name FROM westerncourse WHERE weight = '0.5';

-- Query 5
SELECT code, name, officialname FROM outsidecourse, university WHERE outsidecourse.identitynum = university.identitynum and university.officialname = 'University Of Toronto';

-- Query 6
SELECT name, nickname FROM outsidecourse, university WHERE outsidecourse.identitynum = university.identitynum and name LIKE "%Introduction%";

-- Query 7
SELECT name, officialname, name decisiondate FROM outsidecourse, university, equivalents WHERE DATE_SUB(CURDATE(), INTERVAL 5 YEAR); 

-- Query 8

-- Query 9
SELECT COUNT(code) FROM equivalents WHERE number = 'cs1026';

