CREATE TABLE PRODUCTOS2
(CODE NUMBER,
NAME VARCHAR2(100));

-- ***
INSERT INTO productos2 (code,name ) VALUES (1,'CLAVOS' );


SELECT * FROM PRODUCTOS2;


COMMIT;


DELETE FROM productos2;

ROLLBACK;

INSERT INTO productos2 ( code,name ) VALUES (2,'ARANDELAS' );
INSERT INTO productos2 ( code,name ) VALUES (3,'ESCARPIAS' );

SAVEPOINT A;

UPDATE PRODUCTOS2 SET NAME='TORNILLOS' WHERE CODE=3;

ROLLBACK TO SAVEPOINT A;

COMMIT;
