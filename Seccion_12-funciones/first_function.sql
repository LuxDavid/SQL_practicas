
--Devuleve el mayor valor de un conjunto de valores
SELECT GREATEST(1,2,30,5);

--Obtener un valor mientras que no sea nullo
SELECT COALESCE(null, 'Hola Mundo');

--Crear una funcion
CREATE OR REPLACE FUNCTION greet_employe(employee_name VARCHAR)
RETURNS VARCHAR

as $$

-- Declare
	BEGIN
	
		RETURN 'Hola ' || employee_name;
	
	
	END;

$$
LANGUAGE plpgsql;

SELECT greet_employe('Lux');

SELECT first_name, greet_employe(first_name) from employees;