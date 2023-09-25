--1)
SELECT Empleado.first_name AS Empleado, jefe.first_name AS Jefe
FROM employees Empleado JOIN employees Jefe
ON (Empleado.manager_id = Jefe.employee_id);

--2)

SELECT department_name,sum(salary) AS "Numero Empleados" 
FROM employees
RIGHT OUTER JOIN departments USING (department_id) 
GROUP BY department_name 
ORDER BY sum(salary) ;

--3) 

SELECT department_name, city
FROM departments d RIGHT OUTER JOIN locations l
ON d.location_id = l.location_id;
