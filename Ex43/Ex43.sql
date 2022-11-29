-- MySQL
SELECT ROUND(st.lat_n,4) FROM station AS st 
WHERE(SELECT ROUND(COUNT(*)/2)-1 FROM station) = (SELECT COUNT(*) FROM station st1 WHERE st1.lat_n > st.lat_n);

-- Este ejercicio es algo dificil de hacer, lo primero que hay que tener en cuenta es que esta 
-- sentencia no funciona para todos los casos sino para este en específico. Lo que se hace en este
-- es condicionar la lectura de todos los registros hasta que se cumpla que la lectura de la mitad
-- inferior sea igual a la lectura de la mitad superior. En el punto en el que coninciden es la
-- mediana.