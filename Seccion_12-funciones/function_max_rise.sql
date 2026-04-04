BEGIN
	
	SELECT 
		max_salary - salary INTO possible_raise
	from employees
	INNER JOIN jobs on jobs.job_id = employees.job_id
	WHERE employee_id = empl_id;
	
	RETURN possible_raise;

END;
$$ LANGUAGE plpgsql;


SELECT 
	employee_id,
	first_name,
	salary,
	max_salary,
	max_salary - salary as possible_raise,
	max_raise(employee_id)
from employees
INNER JOIN jobs on jobs.job_id = employees.job_id;

SELECT max_raise(206);

SELECT employee_id, first_name, max_raise(employee_id) from employees;