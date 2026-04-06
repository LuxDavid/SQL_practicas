--percentage: 5
CREATE OR REPLACE PROCEDURE controlled_raise (percentage NUMERIC) AS
$$
DECLARE
	real_percentage NUMERIC(8,2);
	total_employees int;
BEGIN
	real_percentage= percentage / 100; --5% = 0.05;
	
	--Manterne el historico
	INSERT into raise_history(date, employee_id, base_salary, amount, percentage)
	SELECT
	CURRENT_DATE AS "date",
	employee_id,
	salary,
	max_raise(employee_id) * real_percentage AS amount,
	percentage
FROM employees;

--Impactar la table de emnleados
UPDATE employees
	set salary = (max_raise(employee_id) * real_percentage) + salary;

COMMIT;

SELECT COUNT(*) INTO total_employees FROM employees;

raise notice 'Afectados % empleados', total_employees;

END;
$$ LANGUAGE plpgsql;

CALL controlled_raise(1);