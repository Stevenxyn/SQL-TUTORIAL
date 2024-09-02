/*Usamos IN Cuando queremos comparar el valor de una columna
con una lista de valores

NOT IN Que no me traiga la lista que pongo en seguida
IN Que me traiga los datos con lo que puse en la lista
*/

SELECT * 
FROM Paises
--WHERE Codigo NOT IN ('ARG','AGO','AND')
WHERE Codigo IN ('ARG','AGO','AND')

/*
FUNCIONA PERO NO ES LA MEJOR PRACTICA
WHERE Codigo = 'ARG' OR 
	Codigo = 'AGO' OR
	Codigo = 'AND'
*/


GO

SELECT *
FROM Ciudades
WHERE Id IN (1,4,14,52)


GO

