-- Creamos una base de datos
create database holamundo;
-- Nos muestra todas las bases de datos que tenemos disponibles 
show databases;
-- Para establecer sobre que base de datos se estará trabajando 
use holamundo;
-- Creamos una base de datos 
CREATE TABLE animales (
-- Se indica el nombre de la columna y el tipo de datos que almacenará
id int ,
tipo varchar (255) ,
estado varchar (255),
-- Indicamos que columna será la clave primaria 
PRIMARY KEY (id)
) ;
-- Se insertan datos a una tabla, se establece que columnas se van a llenar
-- y posteriormente los datos que irán en cada columna.
INSERT INTO animales (id, tipo, estado) VALUES (1,'Chanchito', 'Feliz');

-- Modificamos la estructura de la tabla
ALTER TABLE animales modify column id int auto_increment;

-- Como se debe crear la tabla con el Auto incremento desde un inicio 
SHOW CREATE TABLE animales;
-- Nos mostrará el comando 
-- Creamos una base de datos
create database holamundo;
-- Nos muestra todas las bases de datos que tenemos disponibles 
show databases;
-- Para establecer sobre que base de datos se estará trabajando 
use holamundo;
-- Creamos una base de datos 
CREATE TABLE animales (
-- Se indica el nombre de la columna y el tipo de datos que almacenará
id int ,
tipo varchar (255) ,
estado varchar (255),
-- Indicamos que columna será la clave primaria 
PRIMARY KEY (id)
) ;
-- Se insertan datos a una tabla, se establece que columnas se van a llenar
-- y posteriormente los datos que irán en cada columna.
INSERT INTO animales (id, tipo, estado) VALUES (1,'Chanchito', 'Feliz');

-- Modificamos la estructura de la tabla
ALTER TABLE animales modify column id int auto_increment;

-- EL COMANDO DE UNA TABLA QUE YA EXISTE 
SHOW create TABLE animales;
-- COMANDO CON AUTO INCREMENTO 
CREATE TABLE `animales` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ;

-- INSERTAMOS MÁS FILAS 
INSERT INTO animales (tipo, estado) VALUES ('Felipe', 'Triste');
INSERT INTO animales (tipo, estado) VALUES ('dragon', 'Enojado');
INSERT INTO animales (tipo, estado) VALUES ('Tortuga', 'Ansiosa');
INSERT INTO animales (tipo, estado) VALUES ('Perro', 'Feliz');

-- Visualizar valores de la tabla
select * FROM animales;

-- Seleccionamos solo un valor en especifico 
select * FROM animales where id = 1;
select * FROM animales where estado = 'feliz';

-- Agregar otra condición a mi busqueda 
select * FROM animales where estado = 'feliz' and tipo = 'Perro';

-- Actualizar registros en tablas 
update animales set estado = 'Feliz' where id = 3;

-- Borrar registros con una condición 
-- SOLO SE PUEDE CON EL PRIMARY KEY
delete from animales where id = 3;
-- Error Code: 1146. Table 'hello_mysql.animales' doesn't exist

select * from animales;
-- SE DEBE DE ESPECIFICAR CON EL PRIMARY KEY 
update animales set estado = 'triste' where id = 4;

