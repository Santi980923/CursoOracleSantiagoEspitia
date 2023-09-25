-- ANY -- >  <  = <>

--->    >ANY <ANY

SELECT first_name, last_name, job_id, salary 
FROM employees 
WHERE salary > ANY(SELECT salary FROM employees WHERE job_id = 'IT_PROG')
AND JOB_ID <> 'IT_PROG';

-- ALL

SELECT first_name, last_name, job_id, salary 
FROM employees 
WHERE salary > ALL (SELECT salary FROM employees WHERE job_id = 'IT_PROG')
AND JOB_ID <> 'IT_PROG';


-- IN
SELECT  department_id, first_name, salary 
FROM employees 
WHERE (department_id, salary) IN (SELECT department_id, MAX(salary)
                                        FROM employees
                                        GROUP BY department_id);
               
                                        
SELECT  department_id, first_name, salary 
FROM employees emp
WHERE  salary = (SELECT MAX(salary) FROM employees 
                                WHERE department_id = emp.department_id);
                                
                        
-- EXISTS , NO EXISTS

SELECT department_name 
FROM departments dept
WHERE EXISTS (SELECT * FROM employees WHERE department_id = dept.department_id);

                                        
 



