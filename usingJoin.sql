-- USING

SELECT department_id, department_name, first_name 
FROM employees e JOIN departments d
    USING (department_id)
    WHERE SALARY > 5000;
    
  
  SELECT e.department_id, department_name, first_name, city
FROM employees e JOIN departments d
    ON (e.department_id = d.department_id)
    JOIN locations l 
    ON (d.location_id = l.location_id)
    AND SALARY > 5000;
    
    
    
    
    
    
    
/*SELECT department_name, first_name 
FROM employees  NATURAL JOIN departments;*/