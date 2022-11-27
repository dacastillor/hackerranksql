SELECT CITY, LENGTH(CITY) 
FROM STATION
WHERE LENGTH(CITY) = (SELECT MIN(LENGTH(CITY)) FROM STATION)
ORDER BY CITY LIMIT 1;
SELECT CITY, LENGTH(CITY) 
FROM STATION
WHERE LENGTH(CITY) = (SELECT MAX(LENGTH(CITY)) FROM STATION)
ORDER BY CITY LIMIT 1;

-- Este me sirvió en HackerRank con el motor MySQL

SELECT CITY, LENGTH(CITY) 
FROM STATION
GROUP BY CITY
ORDER BY LENGTH(CITY) 
LIMIT 1;
SELECT CITY, LENGTH(CITY)
FROM STATION
GROUP BY CITY
ORDER BY LENGTH(CITY) DESC
LIMIT 1;

-- Este me sirvió en HackerRank con el motor DB2

-- Respuesta en ambos:

--     Amo 3

--     Marine On Saint Croix 21

-- La vaina con la respuesta 2 es que sirve para esta base de datos en concreto
-- pero por ejemplo si se agrega un dato con la misma longitud en el nombre de 
-- ciudad pero que comienza por ejemplo con B en lugar de M (Marine On Saint Croix 21)
-- se rompe el código y no va a dar lo que se solicita en el requerimiento, que es
-- cuando sean iguales de tamaño en la consulta opte por obtener el que este primero
-- en orden alfabético. Lo que da como resultado siempre va a ser Marine On Saint Croix 21 u 
-- otro con las misma longitud pero con una letra que va después de que la M o Mer o así...


