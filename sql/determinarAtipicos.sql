   
  select * from datos order by edadEncuesta
    
  --calcular mediana
  
  select (count(0)/2)+1 as mitad, count(0) as cantidad from datos--entrada de la siguiente consulta
  --2996	5991
  
  select top 2996 * from datos order by edadEncuesta desc--se mira el último valor de edadEncuesta
  --la mediana es 39

  --calcular q3
    select (count(0)/4)+1 as cuartaParte, count(0) as cantidad from datos--entrada de la siguiente consulta
	--1498	5991

	select top 1498 * from datos order by edadEncuesta desc--se mira el último valor de edadEncuesta
	--q3 es 45

	--calcular q1
    select (count(0)/4)+1 as cuartaParte, count(0) as cantidad from datos--entrada de la siguiente consulta
	--1498	5991

	select top 1498 * from datos order by edadEncuesta asc--se mira el último valor de edadEncuesta
	--q1 es 34

	--calcular rango intercuartil (Q3 - Q1):		
	45-34=11    -- es rango intercuartil
	
	--calcular límites internos  (para valores atípicos leves):   
		11*1.5=	16.5 --rango intercuartil * 1.5
					
		45+16.5=61.5	--q3+16.5   --limite interno superior
		
		34-16.5=17.5	--q1-16.5   --limite interno inferior
		
	--calcular límites externos (para valores atípicos extremos): 
		
		11*3=	33 --rango intercuartil * 3
					
		45+33=78	--q3+33   --limite externo superior
		
		34-33=1	--q1-33   --limite externo inferior
		
	
	
	--veamos qué valores están debajo de 1 o encima de 78:
	
	select * from datos where (convert(numeric(4,0),edadEncuesta)>78 or convert(numeric(4,0),edadEncuesta)<1)
	
	
	
	
	
	


  
  
  
  
  