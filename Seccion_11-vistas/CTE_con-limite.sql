WITH RECURSIVE bosses AS (
	--init
		SELECT id, name, reports_to, 1 AS depth from employees WHERE id = 1
	UNION
	-- Recursive
	SELECT employees.id, employees.name, employees.reports_to, depth + 1  FROM employees	
		INNER JOIN bosses on bosses.id = employees.reports_to
		WHERE depth < 4
)
SELECT * FROM bosses;