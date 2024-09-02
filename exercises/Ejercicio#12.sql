/*
Devolver ID, NOMBRE, APELLIDO y DIRECCION 
de los clientes con id mayores a 80 pero menores a 125
excepto por los clientes 99 y 100
y ademas devolver los clientes con id 13,17,19,28,56
*/

SELECT Id, Nombre, Apellido, Direccion
FROM Clientes
WHERE Id BETWEEN 80 AND 125 AND
	Id NOT IN (99,100) OR
	Id IN (13,17,19,28,56)

GO

SELECT Id, Nombre, Apellido, Direccion
FROM Clientes
WHERE Id IN (13,17,19,28,56)


