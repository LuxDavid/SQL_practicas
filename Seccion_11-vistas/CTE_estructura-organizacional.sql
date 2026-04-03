

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    reports_to INT
);

SELECT * from employees;

INSERT INTO employees(name, reports_to)
VALUES 
('SubJefe Susana', 1),
('SubJefe Juan', 1),
('Gerente Pedro',3),
('Gerente Melissa',3),
('Gerente Carmen',2),
('SubGerente Ramiro',5),
('Programador Fernando',7),
('Programador Eduardo',7),
('Presidente Karla', null)
('Jr Mariano', 8)
;

SELECT * FROM employees WHERE reports_to = 1
UNION
SELECT * FROM employees WHERE reports_to in (2,3)
UNION
SELECT * FROM employees WHERE reports_to in (6,4,5);

WITH RECURSIVE bosses AS (
	--init
		SELECT id, name, reports_to from employees WHERE id = 5
	UNION
	-- Recursive
	SELECT employees.id, employees.name, employees.reports_to  FROM employees	
		INNER JOIN bosses on bosses.id = employees.reports_to
)
SELECT * FROM bosses;