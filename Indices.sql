-- indices
-- PALABRAS CONTENIDO


CREATE INDEX INDEX1 ON EMPLOYEES(LAST_NAME);

SELECT * FROM EMPLOYEES WHERE LAST_NAME LIKE 'S%';

CREATE INDEX INDEX2 ON EMPLOYEES(FIRST_NAME,LAST_NAME);

DROP INDEX INDEX2;