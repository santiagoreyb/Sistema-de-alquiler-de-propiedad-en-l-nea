--Punto 6
create or replace view v_sexto as
select coalesce(to_char(extract(year from p.fecha)),'TOTAL') as año, sum(p.valor_otorgado) as total
from prestamo p
group by rollup (extract(year from p.fecha))
order by extract(year from p.fecha);
--Punto 7
create or replace view v_septimo as
with conteodeudor(id,num)as(
select p.id_deudor,count(distinct (p.id_banco)) 
from prestamo p
group by p.id_deudor
), conteobanco(num) as(
select count(b.id_banco)
from banco b
)
select d.nombre_deudor
from deudor d, conteodeudor,conteobanco
where conteodeudor.num=conteobanco.num
and d.id_deudor=conteodeudor.id;
;
