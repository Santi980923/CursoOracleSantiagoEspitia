--1 )
CREATE VIEW CIUDADES_GRANDES
AS SELECT * FROM CIUDADES
WHERE POBLACION>3000000;

SELECT * FROM CIUDADES_GRANDES;

-- 2)
CREATE VIEW CIUDADES_USA
AS SELECT * FROM CIUDADES
WHERE COD_PAIS=18;


SELECT * FROM CIUDADES_USA;

--3 )
DROP VIEW CIUDADES_USA;
DROP VIEW CIUDADES_GRANDES;


-- 4)
CREATE INDEX I_CIUDADES ON CIUDADES(NOMBRE);

--5)
CREATE SEQUENCE SEQ1 INCREMENT BY 5 MINVALUE 1;

-- 6) 
INSERT INTO PAISES VALUES (SEQ1.NEXTVAL,'INGLATERRA');
INSERT INTO PAISES VALUES (SEQ1.NEXTVAL,'ALEMANIA');
SELECT* FROM PAISES;