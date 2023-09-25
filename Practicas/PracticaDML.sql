CREATE TABLE PRODUCTOS
(
CODIGO NUMBER NOT NULL
, NOMBRE VARCHAR2(100) NOT NULL
, PRECIO NUMBER NOT NULL
, UNIDADES NUMBER
, FECHA_ALTA DATE
);


-- 1)
INSERT INTO productos(codigo,nombre,precio,unidades, fecha_alta) VALUES (1,'Tornillos',100,10,'01-09-2017');

SELECT * FROM productos;

-- 2)

INSERT INTO productos VALUES (2,'Tuercas',50,5,'01-10-2009');

SELECT * FROM productos;

-- 3)
INSERT INTO productos (codigo, nombre, precio) VALUES (3,'Martillo',90);

SELECT * FROM productos;

-- 4)

INSERT INTO PRODUCTOS (codigo,nombre,precio,unidades)
VALUES (4,'Arandela',55,10);


SELECT * FROM productos;

-- Crear tabla productos 
CREATE TABLE PRODUCTOS2
(CODE NUMBER,
NAME VARCHAR2(100));

-- 5)
INSERT INTO productos2 (code,name)
                  SELECT codigo,nombre FROM productos
                  WHERE unidades > 8;
                  
SELECT * FROM productos2;

--6)

UPDATE productos
SET nombre = UPPER(nombre)
WHERE precio > 50;

SELECT * FROM productos;

-- 7)

UPDATE productos
SET precio = precio + 5
WHERE nombre LIKE 'T%';

SELECT * FROM productos;

--8) 
DELETE productos 
WHERE unidades < 10 OR unidades IS NULL;

SELECT * FROM productos;

--9)
TRUNCATE TABLE productos2;