-- alter table 

/*

a�adir columna 
modificar una columna 
definir default value
borrar una columna 
read-only
*/

ALTER TABLE CURSOS 
ADD (PROFESOR VARCHAR2(100));


ALTER TABLE CURSOS 
ADD (TUTOR VARCHAR2(100));

ALTER TABLE CURSOS 
MODIFY (PROFESOR VARCHAR2(50));

ALTER TABLE CURSOS 
MODIFY (PROFESOR NUMBER);


ALTER TABLE CURSOS 
MODIFY (NOMBRE NUMBER);



ALTER TABLE CURSOS 
MODIFY (TUTOR VARCHAR2(100) DEFAULT 'TUTOR1');



ALTER TABLE CURSOS DROP(TUTOR);

ALTER TABLE CURSOS  READ ONLY;

INSERT INTO CURSOS VALUES (2,100,'ZZ');
ALTER TABLE CURSOS READ WRITE;

-- borrar 

DROP TABLE CURSOS CASCADE CONSTRAINTS;

DROP TABLE ALUMNOS;666

