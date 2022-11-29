-- MySQL
SELECT 
    CASE
        WHEN grade < 8 THEN NULL
        ELSE name
    END
, grade, marks 
FROM students 
JOIN grades 
ON marks BETWEEN min_mark AND max_mark
ORDER BY grade DESC, name; 

-- Aqui el paso importante es el JOIN, donde se puede hacer con el operador BETWEEN.
-- Con este operador lo que se hace en el JOIN es que cada grade asociado con el marks
-- de cada estudiante se asigna con un valor que va desde min_mark hasta max_mark. Con
-- esto logramos darle un grade a cada uno de los marks del estudiante y clasificarlo
-- si se registra como NULL o con su nombre.