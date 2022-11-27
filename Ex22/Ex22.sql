SELECT
CASE    
    WHEN a + b <= c OR b + c <= a OR a + c <= b THEN "Not A Triangle"
    ELSE
        CASE    
            WHEN (a = b AND b = c) THEN "Equilateral"
            WHEN (a <> b AND b <> c AND a <> c) THEN "Scalene"
            ELSE "Isosceles"
        END
    END
FROM triangles;