-- Self Joins

SELECT trabajador.first_name AS Trabajador, jefe.first_name AS Jefe
FROM employees trabajador JOIN employees jefe
ON (trabajador.manager_id = jefe.employee_id);