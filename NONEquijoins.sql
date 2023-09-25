-- WHERE 

SELECT department_name, first_name, l.city
FROM employees e, departments d, locations l
WHERE e.department_id = d.department_id
               AND l.location_id = d.location_id;
               
SELECT department_name
FROM departments d JOIN locations l
ON d.location_id <> l.location_id
AND l.city = 'Seattle';