use actividades;

select nombre from peliculas; -- 4.1

select calificacionedad from peliculas; -- 4.2

select * from peliculas where calificacionedad is null; -- 4.3

select * from salas where pelicula is null; -- 4.4

select s.*, p.* from salas s left join peliculas p on s.pelicula = p.codigo; -- 4.5

select s.*, p.* from salas s right join peliculas p on s.pelicula = p.codigo; -- 4.6

select p.nombre from peliculas p inner join salas s on s.pelicula != p.CODIGO; -- 4.7

insert into peliculas values(10, 'Uno, Dos, Tres', 7);-- 4.8

update peliculas set calificacionedad = 13 where calificacionedad = null; -- 4.9

delete from salas where pelicula = (
	select codigo from peliculas where calificacionedad = 'PG'
); -- 4.10




