-- Formato de fecha para consultar es 'A�oMesDia'
SELECT * 
FROM Clientes
WHERE FechaNacimiento >= '20010917'
	/*
	FechaNacimiento > '20000101'
	FechaNacimiento < '20000101'
	*/

GO

SELECT * 
FROM Clientes
WHERE Nombre = 'Xenos'