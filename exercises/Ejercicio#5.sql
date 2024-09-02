/*
Devolver todas las ciudades argentinas y todas las ciudades brasileras
excepto aquellas que pertenezcan a los distritos de buenos aires y recife
*/

SELECT * 
FROM Ciudades
WHERE (CodigoPais = 'BRA' OR CodigoPais = 'ARG') 
	AND Distrito != 'Buenos Aires'
	AND Distrito != 'Recife'

--Otra manera
WHERE (CodigoPais = 'ARG' AND Distrito != 'Buenos Aires')
  OR	(CodigoPais = 'BRA' AND Distrito != 'Recife') 