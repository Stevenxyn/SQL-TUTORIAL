/*
Devolver solo Ordenes realizadas antes de febrero del 2018
que no hayan vendido mas de 100 productos
o Ordenes realizadas despues de junio del 2018
que no hayan vendido mas de 50 productos
*/

SELECT * 
FROM Ordenes
WHERE (Fecha < '20180201' AND Cantidad >= 100)

SELECT * 
FROM Ordenes
WHERE (Fecha > '20180701' AND Cantidad <= 50)

	
