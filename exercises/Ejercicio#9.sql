/*
Devolver todas las ciudades de los paises hispanoparlantes
*/

SELECT Nombre,CodigoPais,Distrito
FROM Ciudades 
WHERE CodigoPais IN 
	('ABW', 'AND', 'ARG', 'BLZ', 'BOL', 'CAN', 'CHL', 'COL', 'CRI', 
	'CUB', 'DOM', 'ECU', 'ESP', 'FRA', 'GTM', 'HND', 'MEX', 'NIC', 
	'PAN', 'PER', 'PRI', 'PRY', 'SLV', 'SWE', 'URY', 'USA', 'VEN', 'VIR')

GO

SELECT *
FROM PaisesIdioma
WHERE  PaisIdioma = 'Spanish'