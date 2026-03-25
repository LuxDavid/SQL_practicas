SELECT
	hire_date,
	make_interval(YEARS:=2026 - EXTRACT(YEARS from hire_date)::INTEGER) as manual,
	make_interval(YEARS:=date_part('years', CURRENT_DATE):: INTEGER - EXTRACT (YEARS FROM 
	hire_date)::INTEGER) as computed

FROM
employees
ORDER by hire_date desc;

------------------------------------------------------------

SELECT 
	hire_date,
	hire_date + INTERVAL '26 years' as years
FROM
employees
ORDER BY hire_date desc;

------------------------------------------------------------

UPDATE
	employees
SET
	hire_date= hire_date + INTERVAL '26 years';

------------------------------------------------------------

    SELECT
	first_name,
	last_name,
	hire_date,
	CASE
		WHEN hire_date > now() - INTERVAL '1 year' then 'Rango A 1 año o menos' 	
		WHEN hire_date > now() - INTERVAL '3 year' then 'Rango B 1 a 3 años'
		WHEN hire_date > now() - INTERVAL '6 year' then 'Rango C 3 a 6 años'	
		else 'Rango D + de 6 años'
	END as rango_antiguedad
from employees
ORDER BY hire_date DESC;
