SELECT DISTINCT CITY FROM STATION WHERE ID % 2 = 0;

/*
Con SELECT DISTINCT lo que se hace es seleccionar un valor único en la consulta
ya que en la base de datos en este caso hay varias ciudades con el mismo nombre
y con un ID par. Mejor dicho con SELECT DISTINCT no hay repetidos
*/