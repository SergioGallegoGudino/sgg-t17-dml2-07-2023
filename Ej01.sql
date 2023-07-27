use actividades;

select nombre from articulos; -- 1.1

select nombre, precio from articulos; -- 1.2

select nombre from articulos where precio <= 200; -- 1.3

select * from articulos where precio >= 60 and precio <=120; -- 1.4

select nombre, precio*166.386 from articulos; -- 1.5

select avg(precio) from articulos; -- 1.6

select avg(precio) from articulos where fabricante = 2; -- 1.7

select count(nombre) from articulos where precio >= 180; -- 1.8

select nombre, precio from articulos where precio >= 180
order by precio desc, nombre asc; -- 1.9

select * from articulos a inner join fabricantes f on a.fabricante = f.codigo; -- 1.10

select a.nombre, a.precio, f.nombre from articulos a inner join fabricantes f on a.fabricante = f.codigo; -- 1.11

select avg(a.precio), f.codigo from articulos a inner join fabricantes f on a.fabricante = f.codigo group by f.codigo; -- 1.12

select avg(a.precio), f.nombre from articulos a inner join fabricantes f on a.fabricante = f.codigo group by f.codigo; -- 1.13

select f.nombre from fabricantes f inner join articulos a on a.fabricante = f.codigo group by f.nombre having avg(a.precio)>=150; -- 1.14

select nombre, precio from articulos where precio = (
	select min(precio) from articulos
); -- 1.15

select a.nombre, a.precio, f.nombre from articulos a inner join fabricantes f on a.fabricante = f.codigo where a.precio in (
	select max(a.precio) from fabricantes f inner join articulos a on a.fabricante = f.codigo group by f.nombre
); -- 1.16

INSERT INTO articulos VALUES (11, 'Altavoces', 70, 2); -- 1.17

update articulos set nombre='Impresora Laser' where codigo = 8; -- 1.18

update articulos set precio = precio * 0.9 where codigo > 0; -- 1.19

update articulos set precio = precio + 10 where precio >= 120 and codigo > 0; -- 1.20 





