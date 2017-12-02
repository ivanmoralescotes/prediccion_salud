
--la columna 'edadMuerte' se discretizó de esta manera porque hubo un inconveniente con weka al tratar de discretizar teniendo la variable dependiente numérica 


--declare intervalo int


--#bins=4  --asignado manualmente

  select min(convert(numeric,edadmuerte)) as minimo,max(convert(numeric,edadmuerte)) as maximo,
	(max(convert(numeric,edadmuerte))-min(convert(numeric,edadmuerte)))/4.0 as intervalo
  from datos 
  
--51	79	7.000000

--teniendo en cuenta la discretización por simple binning:
		
update datos set edadMuerteCat = 	
	(case when edadMuerte<=58 then 'joven'
		when edadMuerte between 59 and 66 then 'mayor'
		when edadMuerte between 67 and 74 then 'muyMayor'
		when edadMuerte >= 75 then 'anciano' end
		)	
	









---------------	

--inventado:
update datos set edadMuerteCat = 	
	(case when edadMuerte<55 then 'joven'
		when edadMuerte between 55 and 65 then 'mayor'
		when edadMuerte between 66 and 75 then 'muyMayor'
		when edadMuerte > 75 then 'anciano' end
		)
		

		
		