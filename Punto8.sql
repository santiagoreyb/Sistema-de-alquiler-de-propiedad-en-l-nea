create or replace view v_octavo as
with promedio_general(año,num)as( 
select extract(year from p.fecha) as año ,avg(p.id_deudor) as promedio_prestamos
from prestamo p, banco b
where p.id_banco=b.id_banco
group by extract(year from p.fecha)
order by extract(year from p.fecha)
), promedio_banco(id,año,num) as(
select p.id_banco,extract(year from p.fecha) as año, avg(p.id_deudor) as promedio
from prestamo p
group by p.id_banco,extract(year from p.fecha)
order by p.id_banco
)
select b.nombre,pg.año,pb.num as promedio_banco,pg.num as promedio_general
from banco b,promedio_general pg, promedio_banco pb
where pg.año=pb.año
and pb.id=b.id_banco
and pb.num>pg.num
order by b.nombre, pg.año;
