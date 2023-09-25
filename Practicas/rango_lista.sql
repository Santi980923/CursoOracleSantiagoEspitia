CREATE TABLE RANGO_LISTA
   (	
    CODIGO NUMBER NOT NULL , 
	DATOS VARCHAR2(100)	,
    FECHA date,
    PAIS VARCHAR2(50)
     ) 
  PARTITION BY RANGE (FECHA)
     SUBPARTITION BY LIST(PAIS) 
    (
    PARTITION TRIMESTRE1 VALUES LESS THAN (TO_DATE('01-04-2023','dd-mm-yyyy'))
      ( 
      SUBPARTITION T1_P1 VALUES('ESPAÑA','FRANCIA','ALEMANIA'),
      SUBPARTITION T1_P2 VALUES('ARGENTINA','CHILE'),
      SUBPARTITION T1_P3 VALUES('USA','CANADA'),
      SUBPARTITION T1_P4 VALUES(DEFAULT)
      ),
    PARTITION TRIMESTRE2 VALUES LESS THAN (TO_DATE('01-07-2023','dd-mm-yyyy'))
      ( SUBPARTITION T2_P1 VALUES('ESPAÑA','FRANCIA','ALEMANIA'),
      SUBPARTITION T2_P2 VALUES('ARGENTINA','CHILE'),
      SUBPARTITION T2_P3 VALUES('USA','CANADA'),
      SUBPARTITION T2_P4 VALUES(DEFAULT)
    ),
    PARTITION TRIMESTRE3 VALUES LESS THAN (TO_DATE('01-10-2023','dd-mm-yyyy'))
        ( SUBPARTITION T3_P1 VALUES('ESPAÑA','FRANCIA','ALEMANIA'),
      SUBPARTITION T3_P2 VALUES('ARGENTINA','CHILE'),
      SUBPARTITION T3_P3 VALUES('USA','CANADA'),
      SUBPARTITION T3_P4 VALUES(DEFAULT)
    ),
    PARTITION TRIMESTRE4 VALUES LESS THAN (TO_DATE('01-01-2024','dd-mm-yyyy'))
        ( SUBPARTITION T4_P1 VALUES('ESPAÑA','FRANCIA','ALEMANIA'),
      SUBPARTITION T4_P2 VALUES('ARGENTINA','CHILE'),
      SUBPARTITION T4_P3 VALUES('USA','CANADA'),
      SUBPARTITION T4_P4 VALUES(DEFAULT)
    )
    );
    
    
select * from user_tab_partitions where table_name='RANGO_LISTA';
select * from user_tab_subpartitions where table_name='RANGO_LISTA';


INSERT INTO RANGO_LISTA VALUES(1,'AAAA',SYSDATE,'USA');
INSERT INTO RANGO_LISTA VALUES(2,'BBBB',SYSDATE,'CHILE');
SELECT * FROM RANGO_LISTA;
SELECT * FROM RANGO_LISTA PARTITION(TRIMESTRE2);
SELECT * FROM RANGO_LISTA SUBPARTITION(T2_P2);
SELECT * FROM RANGO_LISTA SUBPARTITION(T2_P3);