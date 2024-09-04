SELECT * 
FROM Clientes
WHERE Apellido LIKE 'H%' 

GO

SELECT * 
FROM Clientes
WHERE Apellido LIKE 'L%' 

GO

SELECT * 
FROM Clientes
WHERE Apellido LIKE '%km%' 


-- 'H%' Todo lo que empiece por H el resto lo complementa el %
-- '%N' Todo lo que termine en N el resto lo complementa el %
-- '%km%' Todo lo que contenga esos valores el resto lo complementa inicio y final el '% %'

GO

SELECT *
FROM Clientes
WHERE Apellido LIKE 'G____a'

GO

SELECT *
FROM Clientes
WHERE Apellido LIKE 'L____'

GO

SELECT *
FROM Clientes
WHERE Apellido LIKE 'A____'


--'A___' Permite buscar el caracter en una posicion cualquiera teniendo en cuenta la longitud de la palabra