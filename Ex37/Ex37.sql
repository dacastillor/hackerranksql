-- MySQL
SELECT ROUND(MAX(lat_n),4) FROM station
WHERE lat_n < 137.2345;

-- DB2
SELECT CAST(MAX(lat_n) AS DECIMAL (10,4)) FROM station
WHERE lat_n < 137.2345;