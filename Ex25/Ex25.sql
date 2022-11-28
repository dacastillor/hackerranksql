SELECT n,
CASE
    WHEN p IS NULL THEN 'Root'
    ELSE 
        CASE
            WHEN n IN (SELECT p FROM BST) THEN 'Inner'
            ELSE 'Leaf'
        END
END
FROM BST
ORDER BY n;

-- Este estuvo algo dificil de entender, en la tabla hay dos columnas N y P, siendo N un set de nodos
-- dentro de un arbol Binario y P el Padre de cada numero.

-- Lo que hay que determinar es si cada numero de la columna N es Leaf, Inner o Root. Esto se determina de
-- la siguiente forma.

--     Es Leaf si el nodo sólo es hijo de otro nodo que sea Padre
--     Es Inner si el nodo es hijo de algun otro nodo y a su vez es padre de otro
--     Es Root si sencillamente no tiene nodo padre

-- Ahora como determinar si un nodo en N es Leaf, Inner o Root dentro de la tabla, lo que se hace es lo siguiente

--     Es Leaf si el nodo sólo aparece en la columna N
--     Es Inner si el nodo aparece tanto en la columna N como en la columna P
--     Es Root si en la columna P su valor es Null, puesto que no tiene nodo padre

-- De ahi se deduce lo que se hizo en el código de arriba, importante:

-- 1. Cuando se compara NULL no se hace con el signo igualdad (=) sino con la instruccion IS NULL
-- 2. Para verificar con IN, no basta con indicar la columna sino que hay que hacerle query para tener un rango de números los cuales
-- contrastar  (WHEN n IN (SELECT p FROM BST) THEN 'Inner')

