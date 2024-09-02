--Consulta con valores numericos
SELECT *
FROM Ciudades
WHERE Id BETWEEN 100 AND 200
--Forma no eficiente
WHERE Id >= 100 AND Id <= 200



--Consulta con valores Strings/fecha
SELECT * 
FROM Clientes
WHERE FechaNacimiento BETWEEN '20000101' AND '20241231' --AñoDiaMes
