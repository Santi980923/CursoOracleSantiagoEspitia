CREATE TABLE productos(

    codigo INT,
    nombre VARCHAR2(200),
    datos VARCHAR2(4000),
    CONSTRAINT x1 CHECK (datos IS JSON));
    
    desc productos;
    
    INSERT INTO PRODUCTOS
    VALUES (1, 'ejemplo1',
    '                        
    {
       "pais" : "Argentina",
       "ciudad" : "Buenos Aires",
       "poblacion " : 100000
    }
    ');
    
    select * From productos;
    
    
    CREATE TABLE productos1 (
        CODIGO INT ,
        NOMBRE VARCHAR2(200),
        DATOS JSON
     );

DESC PRODUCTOS1;

insert into productos1
values ( 1,'ejemplo1',
'
  {
    "pais": "Argentina",
    "ciudad": "Buenos aires",
    "poblacion": 1000000
  }
');

SELECT * FROM PRODUCTOS1;


-- notacion punto
select datos from productos1;

select prod1.datos.pais from productos1 prod1;


insert into productos1
values ( 2,'ejemplo1',
'
  {
    "pais": "Argentina",
    "ciudad": "Buenos aires",
    "poblacion": 1000000,
    "direccion":{
             "calle": "xcxxxxx",
             "piso": 5,
             "puerta": "c"
             }
  }
');

select prod1.datos.direccion from productos1 prod1;

select prod1.datos.direccion.puerta from productos1 prod1;


insert into productos1
values ( 3,'ejemplo3',
'
  {
    "pais": "Francia",
    "ciudad": "Paris",
    "poblacion": 1500000,
    "direccion":{
             "calle": "xcxxxxx",
             "piso": 5,
             "puerta": "c"
             },
    "telefonos": [
        "111-111111",
        "222-222222"
    ]
  }
');

select datos from productos1;

select prod1.datos.telefonos from productos1 prod1;
select prod1.datos.telefonos[0] from productos1 prod1;