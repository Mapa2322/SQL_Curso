use holamundo;
CREATE TABLE user (
id int not null auto_increment, 
name varchar (50) not null, 
edad int not null,
email varchar (100) not null,
primary key (id)
);

INSERT INTO user (name, edad, email) values ('Aby', 23, 'aby@gmail.com');
INSERT INTO user (name, edad, email) values ('Luis', 24, 'luis@gmail.com');
INSERT INTO user (name, edad, email) values ('Ery', 17, 'ery@gmail.com');

SELECT * FROM user;
UPDATE `holamundo`.`user` SET `name` = 'Mony', `edad` = '20', `email` = 'mony@gmail.com' WHERE (`id` = '2');

SELECT * from user limit 1;

select * from user where edad > 20;
select * from user where edad >= 20;
select * from user where edad < 20;

-- Condición "y"
select * from user where edad >= 20 and email = 'ery@gmail.com';

-- Condición "o", es la unión de las dos condiciones 
select * from user where edad >= 20 or email = 'ery@gmail.com';

-- Condición a que sea distinto a lo mostrado 
select	* from user where email != 'ery@gmail.com';

-- Seleccionando columnas dentro de un intervalo 
select * from user where edad between 18 and 30;

-- Consulta de los registros que tengan esta palabra en la columna de información seleccionada 
select * from user where email like '%gmail%';

-- Si es así, debe de terminar de igual forma 
select * from user where email like '%gmail.com';
select * from user where email like 'aby%';

-- Consulta pero ordenad de forma ascendente 
select * from user order by edad asc;

-- Consulta pero ordenad de forma descendente 
select * from user order by edad desc;

-- SON FUNCIONES 
-- Selecciona el dato mayor de la columna edad de la tabla user
select max(edad) as mayor from user;
-- Selecciona el dato minimo de la columna edad de la tabla user
select min(edad) as menor from user;

-- Seleccinar solo las columnas que sean de interés 
-- Seleccionamos la columna id, name
select id, name from user;

-- Cambiamos el nombre de las columnas con un alias 
select id as identificador, name as nombre from user;
