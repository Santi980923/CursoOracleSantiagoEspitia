--1)
SELECT  country_name,region_name 
FROM
regions  re NATURAL JOIN countries co;

--2)
  
SELECT  country_name,region_name 
FROM
regions  re NATURAL JOIN countries co NATURAL JOIN locations;

-- 3) 
SELECT department_name,ROUND(AVG(salary),2)
FROM employees JOIN departments USING(department_id)
GROUP BY department_name;

--4)
  SELECT department_name, first_name, city
  FROM departments dept JOIN employees emple
  ON (dept.manager_id=emple.employee_id) JOIN locations loc USING (location_id);

--5)
SELECT last_name, hire_date, department_name, job_title
FROM employees JOIN departments
USING (department_id)
JOIN jobs
USING(job_id)
WHERE TO_CHAR (hire_date,'yyyy') BETWEEN 2002 AND 2004;

-- 6) 
SELECT job_title,AVG(salary)
FROM jobs NATURAL JOIN employees
GROUP BY job_title
HAVING AVG(salary) > 7000;

-- 7)
SELECT region_name,COUNT(*) AS "Numero Departamento"
FROM regions NATURAL JOIN countries NATURAL JOIN locations NATURAL JOIN departments
GROUP BY region_name;

--8)
SELECT first_name, department_name,country_name
FROM employees
JOIN departments USING(department_id)
JOIN locations USING(location_id)
JOIN countries USING (country_id);


