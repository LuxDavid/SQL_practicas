CREATE OR REPLACE FUNCTION max_raise_2 (empl_id int)
RETURNS NUMERIC(8,2) as $$

DECLARE
	selected_employee employees%rowtype;
	selected_job jobs%rowtype;
	
	possible_raise NUMERIC(8,2);
BEGIN
	
	--Tomar el puesto de trabajo y el salario
	SELECT * FROM employees into selected_employee
	WHERE employee_id = empl_id;
	
	-- Tomar el max salary, acorde a su job
	SELECT * FROM jobs INTO selected_job
	WHERE job_id = selected_employee.job_id;
	
	--Cálculos
	possible_raise = selected_job.max_salary - selected_employee.salary;
	
	if(possible_raise < 0) THEN
		raise EXCEPTION 'Persona con salario mayor max_salary: id:%, %', 
		selected_employee.employee_id, selected_employee.first_name;	
-- 		possible_raise = 0;
		
	END IF;
	
	RETURN possible_raise;

END;
$$ LANGUAGE plpgsql;