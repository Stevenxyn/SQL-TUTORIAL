-- IS NULL: Campos de la columna que no contengan valores

--Validar registros donde haya Nulls
SELECT *
FROM Clientes
WHERE Telefono IS NULL

GO

-- Validar registros donde no hayan nulls
SELECT *
FROM Clientes
WHERE NOT Telefono IS NULL 





