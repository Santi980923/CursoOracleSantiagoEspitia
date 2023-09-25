-- SQL:1999 ANSI

--NATURAL JOIN

SELECT region_id, region_name,country_id, country_name 
FROM
regions  re NATURAL JOIN countries co;

SELECT region_name,country_name 
FROM
regions  re NATURAL JOIN countries co;