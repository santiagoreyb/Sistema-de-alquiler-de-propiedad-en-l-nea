--create or replace view v_noveno as
update prestamo pr set pagado = 'SI'
where pr.id_prestamo in (
with total_abono(id,num) as(
select id_prestamo, sum(valor_abono)as total_abono
from abono 
group by id_prestamo
order by id_prestamo)
select p.id_prestamo--, p.valor_otorgado as deuda, ta.num as abono
from prestamo p, total_abono ta
where p.id_prestamo=ta.id
and p.valor_otorgado<ta.num)