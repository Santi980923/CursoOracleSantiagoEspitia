-- nombres cortos y claros
-- acceder a objetos de otros esquemas


CREATE SYNONYM DEPARTAMENTOS FOR DEPARTMENTS;

SELECT * FROM DEPARTAMENTOS WHERE DEPARTMENT_ID = 10;


GRANT SELECT ON DEPARTMENTS TO PRUEBA;