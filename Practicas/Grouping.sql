SELECT DEPARTMENT_ID,JOB_ID,SUM(SALARY),GROUPING(DEPARTMENT_ID),GROUPING(JOB_ID)
FROM EMPLOYEES
GROUP BY ROLLUP(DEPARTMENT_ID,JOB_ID)
order by department_id,job_id;

SELECT DECODE(GROUPING(JOB_ID),1,'TOTAL DEPARTAMENTO:'||DEPARTMENT_ID,DEPARTMENT_ID) AS "DEPARTAMENTO",
DECODE(GROUPING(DEPARTMENT_ID),1,'TOTAL:',job_id) AS "TRABAJO",
SUM(SALARY) AS "TOTAL SALARIO"
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY ROLLUP(DEPARTMENT_ID,JOB_ID)
order by department_id,job_id;