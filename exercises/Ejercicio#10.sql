/*
Devolver clientes nacidos entre 1950 y 1980
y clientes nacidos entre 1990 y 2010
*/

SELECT *
FROM Clientes
WHERE FechaNacimiento BETWEEN '19500101' AND '19801231' --Año Mes Dia

SELECT *
FROM Clientes
WHERE FechaNacimiento BETWEEN '19900101' AND '20101231' --Año Mes Dia
