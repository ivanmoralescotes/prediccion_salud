--select * from datos_finales
drop table datos_finales
go


select genero, estadoCivil, fuma, consumeMultivitaminico, estaturaCat, edadEncCat, edadMuerteCat, cc
	into datos_finales
from datos 
go

--7 columnas
--drop view datos_finales_sinCc
create view datos_finales_sinCc as
select genero, estadoCivil, fuma, consumeMultivitaminico, estaturaCat, edadEncCat, edadMuerteCat 
from datos_finales
go

select * from datos_finales_sinCc

