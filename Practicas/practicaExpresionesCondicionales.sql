-- DECODE (VALOR, C1, V1,C2,V2,C3,V3,V4)


SELECT first_name,department_id,
CASE department_id 
            WHEN 50 THEN 'Transporte'
            WHEN 90 THEN 'Dirección'     
            ELSE 'Otro departamento”'
END
FROM employees;