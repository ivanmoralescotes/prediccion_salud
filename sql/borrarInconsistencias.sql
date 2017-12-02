
--select top 1000 * from inconsistencias 
--delete from inconsistencias

insert into inconsistencias 
	(genero, EstadoCivil, fuma, ConsumeMultivitaminico, Estatura, EdadEncuesta,EdadMuerte,cc )
select genero, EstadoCivil, fuma, ConsumeMultivitaminico, Estatura, EdadEncuesta,EdadMuerte,cc 
from datos
where convert(numeric,Estatura  )>210
	or genero is null
	--or convert (numeric, edadEncuesta)>          (select x)--
	or (/*convert(numeric(4,0),edadEncuesta)>78 or*/ convert(numeric(4,0),edadEncuesta)<1) --atípicos
	
delete 
--select *
from datos where cc in (select cc from inconsistencias) 

select count(0)  from datos

