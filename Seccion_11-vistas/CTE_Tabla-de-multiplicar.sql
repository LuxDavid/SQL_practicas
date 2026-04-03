WITH RECURSIVE multiplication_table(base, val, result) as (
	--init
	SELECT 5 as base, 1 as val, 5 as result
	--values(5,1,5) Otra forma de declarar valores iniciales
	UNION
	-- recursiva
	SELECT 5 as base, val + 1, (val+1) * base from multiplication_table
		WHERE val < 20
)
SELECT * from multiplication_table;