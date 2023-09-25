/*
  PARTICIONAMIENTO POR RANGO
  
  PARTITION BY RANGE (columna,columna1)
  (
      PARTITION P1 VALUES LESS THAN (10),
      PARTITION P2 VALUES LESS THAN (20),
      PARTITION P3 VALUES LESS THAN (30),
      PARTITION P4 VALUES LESS THAN (MAXVALUE),

      
  
  */


CREATE TABLE "RANGO" 
   (	
    CODIGO NUMBER NOT NULL , 
	DATOS VARCHAR2(100)	
     ) 
  PARTITION BY RANGE (codigo)
  (
      PARTITION P1 VALUES LESS THAN (10),
      PARTITION P2 VALUES LESS THAN (20),
      PARTITION P3 VALUES LESS THAN (30),
      PARTITION P4 VALUES LESS THAN (40)
     );
     
     select * from rango;
     
     select * from user_part_tables;
     select * from user_tab_partitions where table_name='RANGO';
     
     
     insert into rango values(21,'aaa');
     select * from rango;
     select * from rango partition(p3);
      select * from rango partition(p1);
    insert into rango values(8,'fafsdaf');
     
       select * from rango partition(p1);
       select * from rango;
       
       select * from rango where codigo=21;
         
       select * from rango where codigo>21;
       
       select * from rango where datos ='aaaa';
       
       insert into rango values (40,'kkkkkk');
       
       alter table rango
       add partition p5 values less than (50);
       select * from user_tab_partitions where table_name='RANGO';
       insert into rango values (40,'kkkkkk');
       select * from rango partition(p5);
       
       
       alter table rango
       add partition p6 values less than (100);
       
       
       
       alter table rango
       add partition p7 values less than (MAXVALUE);
        select * from user_tab_partitions where table_name='RANGO';
              
        insert into rango values (40000000,'kkkkkk');
        
         
        select * from rango;
        update rango set codigo=22 WHERE codigo=21;
        
        update rango set codigo=7 WHERE codigo=22;

        alter table rango enable row movement;

        select * from rango partition(p1);
        
        select * from user_tab_partitions where table_name='RANGO';
        
        alter table rango merge partitions p3,p4 into partition p3_4;
        
        alter table rango merge partitions p1,p6 into partition p1_6;
        
         alter table rango merge partitions p5 to p7 into partition p5_6_7;

        
        
        

        
        
        
        
        
        
        