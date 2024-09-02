/*
Devolver codigo, nombre, continente y region
de todos los paises de america *norte y sur*
*/

SELECT Codigo, Nombre, Continente, Region
FROM Paises
WHERE Continente IN ('North America', 'South America')