SELECT DISTINCT CITY FROM STATION
WHERE LEFT(CITY, 1) IN ('A','E','I','O','U');

-- LEFT(CITY,1) consulta y extrae sólo la primera letra de izuqierda a derecha en la consulta
-- y con IN seleccionamos en el intervalo que incluye a AEIOU, tal como se solicita en el
-- requerimiento