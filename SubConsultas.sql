-- Subqueries
SELECT MAX(salary) from employees;

SELECT first_name, salary 
FROM employees
WHERE salary = 24000;

SELECT first_name, salary 
FROM employees
WHERE salary = (
SELECT MAX(salary) from employees);


-- 
SELECT first_name, department_id
FROM employees
WHERE department_id = (SELECT department_id FROM employees 
                                             WHERE first_name = 'Douglas' AND last_name = 'Grant');
                                             

-- ejemplo 
SELECT first_name, last_name, salary 
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
AND department_id = 50
;


-- HAVING 

SELECT department_id, ROUND(AVG(salary)) AS "Media Departamento"
FROM employees
GROUP BY department_id
HAVING AVG(salary) > (SELECT AVG(salary) FROM employees);

-- MULTIPLES ROWS 
-- ANY, IN , ALL

SELECT first_name, salary, department_id
FROM employees
WHERE (department_id,salary) IN (SELECT department_id,MAX(salary) FROM employees
GROUP BY department_id);


SELECT first_name, department_id
FROM employees WHERE department_id IN
(SELECT department_id FROM departments d JOIN locations l
ON (d.location_id = l.location_id)
AND city = 'Seattle');


SELECT department_id, department_name FROM departments d JOIN locations l
ON (d.location_id = l.location_id)
AND city = 'Seattle';


                                             





-- WHERE
-- HAVING 
-- FROM



