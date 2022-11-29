-- MySQL
SELECT ROUND(SQRT(POWER(MAX(lat_n)- MIN(lat_n),2) + POWER(MAX(long_w) - MIN(long_w),2)),4) FROM station; 

-- Euclidean Distance

-- EN

-- Given the coordinates (x,y) of two points :

-- P1(x1,y1), P2(x2,y2)

-- The Euclidean Distance is:

-- d = sqrt((x2 - x1)^2 + (y2 - y1)^2) 


-- ESP

-- Para dos puntos con coordenadas xy:

-- P1(x1,y1), P2(x2,y2)

-- La Distancia Euclidea es

-- d = sqrt((x2 - x1)^2 + (y2 - y1)^2) 