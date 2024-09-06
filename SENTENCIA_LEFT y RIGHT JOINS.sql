-- OUTER JOIN

/*
Con INNER JOIN
Trae los resultados de los CLIENTES que NO tienen ORDENES y NO tampoco trae
los resultados de las ORDENES que no tienen CLIENTES

CONDICION: no hay clientes ID con ORDENES ID, entonces no los trae para ninguno
ON Clientes.Id = ordenes.ClienteI

CHATGPT Explicacion:
El INNER JOIN devuelve solo las filas que tienen coincidencias en ambas tablas.
Si no hay coincidencia, la fila no se devuelve
*/

--Clientes.Id, ClienteId, nombre + ' ' + Apellido AS Fullname
SELECT *
FROM Clientes
	INNER JOIN Ordenes ON Clientes.Id = ordenes.ClienteId
ORDER BY Clientes.Id

GO

/*
Con RIGHT JOIN
Trae resultados de los todos los CLIENTES que NO tengan ORDENES y todas las ORDENES de los CLIENTES
que NO tengan

CONDICION: hay ordenes que no tienen clientes pero las trae y rellena datos con NULL

CHATGPT Explicacion
El RIGHT JOIN devuelve todas las filas de la tabla izquierda (la primera tabla), y las filas coincidentes
de la tabla derecha (segunda tabla). Si no hay coincidencia, las filas de la tabla derecha se rellenan con valores NULL.

RIGHT JOIN Ordenes ON c.Id = ordenes.ClienteId

*/

SELECT *
FROM Ordenes
	RIGHT JOIN Clientes c ON c.Id = ordenes.ClienteId

GO

/*
LEFT OUTER JOIN Clientes c ON c.Id = ordenes.ClienteId
RIGHT OUTER JOIN Clientes c ON c.Id = ordenes.ClienteId

Con o sin el OUTER funciona normal es una palabra opcional
*/
	  