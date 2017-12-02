

update datos set EstaturaCat = 	
	(case when convert(numeric,EstaturaModificada)<=160 then 'bajo'
		when convert(numeric,EstaturaModificada) between 161 and 180 then 'mediano'
		when convert(numeric,EstaturaModificada) between 181 and 200 then 'alto'
		--when convert(numeric,EstaturaModificada) between 66 and 75 then 'bin3'
		when convert(numeric,EstaturaModificada) > 200 then 'muyAlto' end
		)
		

update datos set EdadEncCat = 	
	(case when convert(numeric,EdadEncModificada)<=32 then 'muyJoven'
		when convert(numeric,EdadEncModificada) between 33 and 37 then 'medioJoven'
		when convert(numeric,EdadEncModificada) between 38 and 42 then 'adultoJoven'
		--when convert(numeric,EdadEncModificada) between 66 and 75 then 'bin3'
		when convert(numeric,EdadEncModificada) > 42 then 'adulto' end
		)
		
		
		--poner null:
		--update datos set EdadEncCat = 	 null
		--update datos set EstaturaCat = 	 null
		
		