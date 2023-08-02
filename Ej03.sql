use actividades;

select * from almacenes;  -- 3.1

select * from cajas where valor > 150;  -- 3.2

select contenido from cajas group by contenido;  -- 3.3

select avg(valor) from cajas;  -- 3.4

select avg(valor) from cajas group by almacen;  -- 3.5

select almacen from cajas where valor > 150 group by almacen;  -- 3.6

select c.numreferencia, a.lugar from cajas c join almacenes a on c.ALMACEN = a.CODIGO;  -- 3.7

select c.almacen, count(c.almacen) from cajas c join almacenes a on c.ALMACEN = a.CODIGO group by c.almacen;   -- 3.8

select codigo from almacenes where capacidad < (
select count(a.codigo) from almacenes a join cajas c on a.codigo = c.ALMACEN); -- 3.9 

select c.numreferencia from cajas c inner join almacenes a on c.almacen = a.codigo where a.lugar = 'Bilbao'; -- 3.10

insert into almacenes values (20, 'Barcelona', 3); -- 3.11

insert into cajas values ('H5RT', 'Papel', 200, 2); -- 3.12

update cajas set valor = valor*0.85; -- 3.13

UPDATE cajas c
JOIN (SELECT AVG(valor) AS avg_valor FROM cajas) sub
SET c.valor = c.valor * 0.8
WHERE c.valor > sub.avg_valor; -- 3.14

delete from cajas where valor < 100; -- 3.15

DELETE FROM cajas
WHERE almacen IN (
   SELECT codigo
   FROM almacenes
   WHERE capacidad < (
      SELECT cnt
      FROM (SELECT COUNT(a.codigo) AS cnt FROM almacenes a JOIN cajas c ON a.codigo = c.ALMACEN) AS sub
   )
); -- 3.16




