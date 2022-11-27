SELECT DISTINCT city FROM station 
WHERE NOT LEFT(city,1) IN ('A','E','I','O','U') 
AND NOT RIGHT(city,1) IN ('a','e','i','o','u');