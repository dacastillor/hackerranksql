SET @nstars = 21; 
SELECT REPEAT('* ', @nstars := @nstars - 1) FROM information_schema.tables LIMIT 20;

information_schema.tables es como una tabla presente en todas las base de datos, de ahí a que
se tome como referencia para hacer el LIMIT 20