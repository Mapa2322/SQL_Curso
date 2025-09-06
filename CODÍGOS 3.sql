create table products ( 
id int not null auto_increment, 
name varchar (50) not null,
created_by int not null,
marca varchar(50) not null, 
primary key (id),
-- Llave foranea 
foreign key(created_by) references user(id)
);

-- Renombrar la tabla 
rename table products to product;

-- Agregamos columnas en un mismo insert a una tabla
insert into product (name, created_by, marca)
values 
('ipad', 1, 'apple'),
('iphone', 1, 'apple'),
('watch', 2, 'apple'),
('macbook',4 , 'apple'),
('ipad', 1, 'apple'),
('imac', 3, 'apple'),
('ipad mini', 3, 'apple');

select * from product;

-- Unir dos tablas
-- Left/right join, traer todos los registros de los usuarios
-- Se le puso un alias a las tablas, y se les llamo con ese alias
Select u.id, u.email, p.name from user u left join product p on u.id = p.created_by;
Select u.id, u.email, p.name from user u right join product p on u.id = p.created_by;

-- INNER INTERSECCIÓN
Select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by;

-- cross join, cruza todo
Select u.id, u.email, p.name from user u cross join product p;

-- Agrupa en registros individuales : group by 
 select count(id), marca  from product group by marca;
 
 select count(p.id), u.name from product p left join user u on u.id = p.created_by group by created_by;
 
  select count(p.id), u.name from product p left join user u on
  u.id = p.created_by group by created_by
  having count(p.id) >= 2;
  
  -- Eliminamos tablas 
  drop table product;
   drop table user, animales;