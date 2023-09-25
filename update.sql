-- UPDATE

/*
    UPDATE TABLE
    SET COLUMNA = VALOR, COLUMNA2 = VALOR2
    WHERE CONDICION
*/

UPDATE DEPT2 
SET jefe = 100
WHERE codigo = 120;

UPDATE DEPT2 
SET jefe = 200
WHERE jefe IS NULL;

UPDATE DEPT2 
SET jefe = (SELECT manager_id FROM departments WHERE department_id = 30)
WHERE codigo = 100;

