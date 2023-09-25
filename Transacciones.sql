insert into regions1 VALUES(100,'AUSTRALIA');

DELETE 
INSERT 
UPDATE ;


-- COMMIT 
-- ROLLBACK 

-- DDL  CREATE TABLE 
-- DCL GRANT 

-- FALLO ROLLBACK 

-- COMMIT AUTOMATICOS
select * from regions1;

insert into regions1 VALUES(100,'AUSTRALIA');


insert into regions1 VALUES(200,'EUROPA');

COMMIT;

insert into regions1 VALUES(300,'AMERICA');

insert into regions1 VALUES(400,'ASIA');

ROLLBACK;


-- SAVEPOINT TO X
select * from regions1;


insert into regions1 VALUES(300,'AMERICA');

insert into regions1 VALUES(400,'ASIA');

SAVEPOINT A;

insert into regions1 VALUES(500,'ANTARTIDA');

insert into regions1 VALUES(600,'AFRICA');

ROLLBACK TO SAVEPOINT A;

ROLLBACK;