create or replace view v_octavo as
with promedio_general(a�o,num)as( 
select extract(year from p.fecha) as a�o ,avg(p.id_deudor) as promedio_prestamos
from prestamo p, banco b
where p.id_banco=b.id_banco
group by extract(year from p.fecha)
order by extract(year from p.fecha)
), promedio_banco(id,a�o,num) as(
select p.id_banco,extract(year from p.fecha) as a�o, avg(p.id_deudor) as promedio
from prestamo p
group by p.id_banco,extract(year from p.fecha)
order by p.id_banco
)
select b.nombre,pg.a�o,pb.num as promedio_banco,pg.num as promedio_general
from banco b,promedio_general pg, promedio_banco pb
where pg.a�o=pb.a�o
and pb.id=b.id_banco
and pb.num>pg.num
order by b.nombre, pg.a�o;
