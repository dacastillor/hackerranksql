-- Solución/Solved

SELECT DISTINCT company.company_code,
company.founder,
COUNT(DISTINCT lm.lead_manager_code),
COUNT(DISTINCT sm.senior_manager_code),
COUNT(DISTINCT m.manager_code),
COUNT(DISTINCT e.employee_code)
FROM (company
JOIN lead_manager AS lm ON lm.company_code = company.company_code
JOIN senior_manager AS sm ON sm.lead_manager_code = lm.lead_manager_code
JOIN manager AS m ON m.senior_manager_code = sm.senior_manager_code
JOIN employee AS e ON e.manager_code = m.manager_code)
GROUP BY company.company_code, company.founder
ORDER BY company.company_code;

-- Explicación

-- Este ha sido un ejercicio algo dificil. Inicialmente lo hice con solo WHERE
-- para que se hicieran las coincidencias con el operador COUNT. 


-- SELECT DISTINCT company.company_code, 
-- company.founder,
-- (SELECT COUNT * FROM lead_manager AS lm WHERE lm.company_code = company.company_code),
-- (SELECT COUNT * FROM senior_manager AS sm WHERE sm.lead_manager_code = lm.lead_manager_code),
-- (SELECT COUNT * FROM manager AS m WHERE m.senior_manager_code = sm.senior_manager_code),
-- (SELECT COUNT * FROM employee AS e WHERE e.manager_code = m.manager_code), 
-- FROM company;
-- ORDER BY company.company_code;


-- La primera consulta funciona, 

-- (SELECT COUNT * FROM lead_manager AS lm WHERE lm.company_code = company.company_code)

-- pero como ya no hay referencia de la siguiente tabla pues no se puede continuar

-- (SELECT COUNT * FROM senior_manager AS sm WHERE sm.lead_manager_code = lm.lead_manager_code)


-- Aun asi de aqui salen las consultas de los JOIN. Como los JOIN son intersecciones
-- y estas se hacen para producir las fuentes de datos que luego van a ser contadas, lo 
-- primero que se hace es generar estos JOIN  

-- FROM (company
-- JOIN lead_manager AS lm ON lm.company_code = company.company_code
-- JOIN senior_manager AS sm ON sm.lead_manager_code = lm.lead_manager_code
-- JOIN manager AS m ON m.senior_manager_code = sm.senior_manager_code
-- JOIN employee AS e ON e.manager_code = m.manager_code)

-- Aqui se comparan cada uno de los escalafones de la empresa. Entonces el primer
-- JOIN es agrupar cuantos lead managers coinciden con el primer fundador. El siguiente
-- JOIN es agrupar cuantos senior managers coinciden con el primer lead manager. Mantenemos
-- esa lógica con los JOIN hasta llegar al empleado (employee)

-- Ya con esto obtenemos las fuentes de información de los empleados que se deben
-- contar. Cabe la posibilidad que se repitan datos (como lo dice el enunciado), asi que en 
-- el conteo debemos garantizar que se haga el conteo de registros que no se repitan

-- COUNT(DISTINCT lm.lead_manager_code),
-- COUNT(DISTINCT sm.senior_manager_code),
-- COUNT(DISTINCT m.manager_code),
-- COUNT(DISTINCT e.employee_code)

-- Finalmente, se traen las consultas para los fundadores de la compañía, se agrupan para
-- que el COUNT no arroje errores al no poder coincidir los registros y se ordenan
-- por el orden ascendente del company.company_code

-- SELECT DISTINCT company.company_code,
-- company.founder,
-- COUNT(DISTINCT lm.lead_manager_code),
-- .
-- .
-- .
-- JOIN employee AS e ON e.manager_code = m.manager_code)
-- GROUP BY company.company_code, company.founder
-- ORDER BY company.company_code;

-- Coincidiendo con el resultado de arriba. Ensayando en Hackerrank este arroja 
-- la respuesta esperada