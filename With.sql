-- WITH

SELECT department_id,department_name,SUM(salary) AS Salario 
FROM employees 
JOIN departments USING (department_id)
GROUP BY department_id, department_name
HAVING SUM(SALARY) > 20000;

WITH  suma_salarios AS 
    (SELECT department_id, SUM(salary) SALARIO FROM employees
     GROUP BY department_id)
     
     SELECT department_id,department_name, SALARIO 
     FROM suma_salarios 
     NATURAL JOIN departments
     WHERE SALARIO > 20000;
     
     
 WITH 
    SUMA_SALARIOS AS (SELECT department_id, SUM(salary) AS SALARIOS FROM employees GROUP BY department_id),
    NUM_EMPLEADOS AS (SELECT department_id, COUNT(*) AS EMPLEADOS FROM employees GROUP BY department_id)
    
    SELECT department_name, salarios, empleados
     FROM  departments, suma_salarios, num_empleados
     WHERE 
            departments.department_id = suma_salarios.department_id
            AND departments.department_id = num_empleados.department_id
            AND EMPLEADOS < 10;