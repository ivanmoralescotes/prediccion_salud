create view datos_finales_csv as
  SELECT  [genero]+','+
      [estadoCivil]+','+
      [fuma]+','+
      [consumeMultivitaminico]+','+
      [estaturaCat]+','+
      [edadEncCat]+','+
      [edadMuerteCat] as cad
  FROM [encuestas].[dbo].[datos_finales]
  
  
  select * from datos_finales_csv
  
  
  ------------------------------------------
  
  --PARA QUE NO FUMEN: 
  SELECT  [genero]+','+
      [estadoCivil]+','+
      [fuma]+','+
      [consumeMultivitaminico]+','+
      [estaturaCat]+','+
      [edadEncCat]+','+
      --[edadMuerteCat] 
	  case when fuma='SI' then 'joven' else edadMuerteCat end 
	  as cad
  FROM [encuestas].[dbo].[datos_finales]
  
  
  
  