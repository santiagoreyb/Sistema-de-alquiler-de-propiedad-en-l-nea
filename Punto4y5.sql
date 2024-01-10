--4 PUNTO
create or replace view v_cuarto as
select d.nombre_deudor,d.tipo_doc, d.numero_doc, b.nombre,p.fecha,p.valor_otorgado
from deudor d,banco b,prestamo p
where p.id_prestamo=d.id_deudor
order by d.tipo_doc, d.numero_doc;
--5 PUNTO
create or replace view v_quinto as
select d.nombre_deudor, coalesce(sum(p.valor_otorgado),0) as Prestamo_Total
from deudor d
left join prestamo p
ON d.id_deudor=p.id_deudor
group by d.nombre_deudor,p.id_deudor
;
