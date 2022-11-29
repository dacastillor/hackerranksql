-- MySQL
SELECT ROUND(ABS(MIN(lat_n) - MAX(lat_n)) + ABS(MIN(long_w) - MAX(long_w)),4) FROM station; 


-- Manhattan Distance

-- EN

-- Given the coordinates (x,y) of two points :

-- P1(x1,y1), P2(x2,y2)

-- The Manhattan Distance is:

-- |x1 - x2| + |y1 - y2| 


-- ESP

-- Para dos puntos con coordenadas xy:

-- P1(x1,y1), P2(x2,y2)

-- La Manhattan Distance es

-- |x1 - x2| + |y1 - y2| 