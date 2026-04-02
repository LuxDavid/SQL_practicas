-- nombre de la tabla en memoria
-- campos que vamos a tener
WITH RECURSIVE countdown as (

	--initializacion =>  el primer nivel, o valores iniciales
	-- values(5)
	SELECT 5 as val
	UNION
	-- Qury recursivo
	SELECT val - 1 from countdown WHERE val > 1
)
-- Select de los campos
SELECT * from  countdown;