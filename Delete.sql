-- DELETE
/*
    DELETE TABLE
    FROM TABLE
    WHERE CONDICION
*/

DELETE dept2
WHERE CODIGO = 1;

DELETE regions 
WHERE region_id IN (5,6,7);

DELETE regions1
WHERE region_id IN (SELECT region_id FROM regions 
                                     WHERE region_id IN (1,3));
