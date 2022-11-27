SELECT DISTINCT city FROM station 
WHERE NOT RIGHT(city,1) IN ('a','e','i','o','u');