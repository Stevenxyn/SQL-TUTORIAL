/*
Devolver nombre, codigo y nombreLocal 
renombrados como Pais, abreviatura y nomenclatura local
de todos los paises de la region "Polynesia"
*/

SELECT Nombre AS 'Pais', 
       Codigo AS 'Abreviatura',
	 NombreLocal AS 'Nomenclatura Local'
FROM Paises
WHERE Region = 'Polynesia'

