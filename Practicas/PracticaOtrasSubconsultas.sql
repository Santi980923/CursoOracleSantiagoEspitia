-- 1)
SELECT first_name, salary, department_id
FROM employees 
WHERE salary > ANY(SELECT MAX(SALARY)
FROM employees
GROUP BY DEPARTMENT_ID
HAVING department_id IN('50', '60','70'));

-- 2)
SELECT  department_name
FROM departments 
WHERE (department_id) IN (SELECT DEPARTMENT_ID
                                        FROM employees
                                        GROUP BY department_id
                                        HAVING ROUND(AVG(salary))   > 9000);
                                        
-- 3)

SELECT  e.first_name, e.salary, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE (e.department_id, e.salary) IN (SELECT department_id, MAX(salary)
                                        FROM employees
                                        GROUP BY department_id)
ORDER BY e.salary DESC;

-- 4)
                      
SELECT   emp.first_name,d.department_name,emp.salary 
FROM employees emp
JOIN departments d ON emp.department_id = d.department_id
WHERE  salary = (SELECT MAX(salary) FROM employees 
                                WHERE department_id = emp.department_id)
ORDER BY salary DESC;

-- 5)

SELECT *
FROM employees 
WHERE salary > ALL (SELECT MAX(SALARY)
FROM employees
GROUP BY DEPARTMENT_ID
HAVING department_id IN('100'));

-- 6)
SELECT   department_id,first_name,salary
FROM employees emp
WHERE  salary = (SELECT MAX(salary) FROM employees 
                                WHERE department_id = emp.department_id);

-- 7)

SELECT city 
FROM locations loc
WHERE EXISTS (SELECT * FROM departments WHERE location_id = loc.location_id);
                                      
-- 8)

SELECT city 
FROM locations loc
WHERE NOT EXISTS (SELECT * FROM departments WHERE location_id = loc.location_id);


-- 9)

SELECT region_name FROM REGIONS Regiones
WHERE NOT EXISTS (SELECT * FROM countries NATURAL JOIN locations NATURAL JOIN departments
WHERE region_id=Regiones.region_id);
                  



