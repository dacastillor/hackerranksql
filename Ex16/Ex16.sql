SELECT DISTINCT city FROM station 
WHERE NOT (LEFT(city,1) IN ('A','E','I','O','U') AND RIGHT(city,1) IN ('a','e','i','o','u'));

-- No entiendo por qué carajo funciona este código. Pensé que era que ciudades que no iniciaban o 
-- terminaban en vocal. El ejercicio es que no inicie o no termine en vocal.

SELECT DISTINCT city FROM station 
WHERE NOT LEFT(city,1) IN ('A','E','I','O','U') 
OR NOT RIGHT(city,1) IN ('a','e','i','o','u');

-- Este es más lógico