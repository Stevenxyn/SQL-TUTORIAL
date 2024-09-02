/*
Devolver ClienteId y fecha de todas las ordenes
realizadas hasta octubre del 2017
*/

SELECT ClienteId, Fecha 
FROM Ordenes
WHERE Fecha <= '20171031'

--Opcion #2
WHERE Fecha < '20171101'
