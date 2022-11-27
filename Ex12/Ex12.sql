SELECT DISTINCT CITY FROM STATION
WHERE RIGHT(CITY, 1) IN ('a','e','i','o','u');

-- Lo mismo que el anterior pero como las ciudades no terminan en mayúscula
-- pues es poner todo en minuscula