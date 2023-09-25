-- OUTER JOINS 

select department_name, first_name
FROM departments d JOIN employees e
ON d.department_id = e.department_id;

-- LEFT OUTER
-- RIGTH OUTER
-- FULL OUTER

-- INNER JOIN 

select department_name, first_name
FROM departments d RIGHT OUTER JOIN employees e
ON d.department_id = e.department_id;


select department_name, first_name
FROM departments d LEFT OUTER JOIN employees e
ON d.department_id = e.department_id;

select department_name, first_name
FROM departments d FULL OUTER JOIN employees e
ON d.department_id = e.department_id;






