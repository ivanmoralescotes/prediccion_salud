

--script que modifica datos para que por ejemplo quede la discretización posterior con varios "bin"

--normalmente edad de muerte está entre 51 y 80

--a) estatura (entre 140 y 209):

update datos set estaturaModificada = 	
	(case when edadMuerte<55 then '150'
		when edadMuerte between 55 and 65 then '170'
		when edadMuerte between 66 and 75 then '190'
		when edadMuerte > 75 then '210' end
		)
		
--b) edadEncuesta (entre 30 y 49):

update datos set edadEncModificada = 	
	(case when edadMuerte<55 then '30'
		when edadMuerte between 55 and 65 then '35'
		when edadMuerte between 66 and 75 then '40'
		when edadMuerte > 75 then '45' end
		)
		

		
