CREATE VIEW EMPLE_VISTA 
AS SELECT * FROM EMPLOYEES;

CREATE VIEW EMPLE_50
AS SELECT * FROM employees WHERE department_id = 50;

SELECT * FROM  EMPLE_50
WHERE SALARY > 5000;

SELECT JOB_ID, AVG(SALARY)
FROM EMPLE_50
GROUP BY JOB_ID
HAVING AVG(SALARY) > 5000;

CREATE VIEW EMPLE_SALARIOS
AS SELECT FIRST_NAME || ' ' || LAST_NAME AS NOMBRE, SALARY AS SALARIO, SALARY * 12 AS ANUAL
FROM employees;


CREATE VIEW REGIONS_V AS SELECT * FROM REGIONS;

SELECT * FROM REGIONS_V;

INSERT INTO REGIONS_V VALUES (5,'XXX');

SELECT * FROM REGIONS;

UPDATE REGIONS_V SET  REGION_NAME  = 'TTTT' 
WHERE REGION_NAME = 'XXX';

CREATE VIEW REGIONES_PAISES AS SELECT * FROM REGIONS NATURAL JOIN COUNTRIES;

SELECT * FROM REGIONES_PAISES;

INSERT INTO REGIONES_PAISES VALUES(10,'REGION10','PAIS FICTICIO');