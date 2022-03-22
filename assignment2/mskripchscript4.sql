-- ----had to skip some, did not create a view

SELECT * FROM university; 
DELETE FROM university WHERE nickname like '%cord%';
SELECT * FROM university; 
DELETE FROM university WHERE province code = 'ON';
-- ----because we do not have cascade here
SELECT * FROM university; 
SELECT * FROM outsidecourse, university WHERE outsidecourse.identitynum = university.identitynum;
SELECT * FROM university; 
SELECT * FROM outsidecourse; 
SELECT * FROM westerncourse;
SELECT * FROM equivalents;

