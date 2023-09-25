
-- 1)
SELECT first_name, last_name 
FROM employees
WHERE department_id = (SELECT department_id FROM employees 
WHERE first_name = 'John' AND last_name = 'Chen');

-- 2)
SELECT  location_id,department_name
FROM departments WHERE location_id = (SELECT location_id 
FROM locations WHERE city = 'Toronto');

-- 3)
SELECT first_name
FROM employees WHERE employee_id IN
(SELECT manager_id
FROM employees
GROUP BY manager_id
HAVING COUNT(*) > 5);

--4)
SELECT city
FROM locations
WHERE location_id = (
    SELECT location_id
    FROM departments
    WHERE department_id IN (
        SELECT department_id
        FROM employees
        WHERE first_name = 'Guy' AND last_name = 'Himuro'
    )
);

-- 5)
SELECT last_name,job_id, salary
FROM employees
WHERE (department_id, salary) IN (
    SELECT department_id, MIN(salary) 
    FROM employees
    GROUP BY department_id
    HAVING MIN(salary) = (SELECT MIN(salary) FROM employees)
);

-- 6)
SELECT *
FROM DEPARTMENTS
WHERE DEPARTMENT_ID IN
(SELECT DEPARTMENT_ID FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING MAX(SALARY)>10000);

-- 7)
SELECT * FROM JOBS
WHERE JOB_ID IN
(SELECT JOB_ID FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE,'YYYY') between 2002 and 2003 );
