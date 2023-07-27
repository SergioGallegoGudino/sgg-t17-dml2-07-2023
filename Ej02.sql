use actividades;

select apellidos from empleados; -- 2.1

select apellidos from empleados group by apellidos; -- 2.2

select * from empleados where apellidos = 'Smith'; -- 2.3

select * from empleados where apellidos IN ('Smith', 'Rogers'); -- 2.4

select * from empleados where departamento = 14; -- 2.5

select * from empleados where departamento in (37,77); -- 2.6

select * from empleados where apellidos like 'P%' ; -- 2.7

select sum(presupuesto) from departamentos; -- 2.8

select count(nombre), departamento from empleados group by departamento; -- 2.9

select * from empleados; -- 2.10

select e.nombre, e.apellidos, d.nombre, d.presupuesto from empleados e inner join departamentos d on e.departamento = d.codigo; -- 2.11

select e.nombre, e.apellidos from empleados e inner join departamentos d on e.departamento = d.codigo where d.presupuesto > 60000; -- 2.12

select d.* from departamentos d inner join empleados e on d.codigo = e.departamento where d.presupuesto





