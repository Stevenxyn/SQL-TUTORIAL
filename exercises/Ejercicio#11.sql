/*
Devolver ordenes realizadas
Antes del 2016
entre marzo y noviembre del 2017 o marzo y noviembre del 2018
despues de enero del 2019
*/

--Ordenes antes del 2016
SELECT * 
FROM Ordenes
WHERE Fecha < '20160101' --Año Mes Dia

--Entre marzo y noviembre del 2017 o marzo y noviembre del 2018
SELECT * 
FROM Ordenes
WHERE Fecha < '20160101' OR
	Fecha BETWEEN '20170301' AND  '20171130' OR
	Fecha BETWEEN '20180301' AND '20181130'--Año Mes Dia
ORDER BY Fecha 