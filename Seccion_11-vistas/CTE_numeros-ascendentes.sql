-- nombre de la table en memoria
-- campos que vamos a tener
WITH RECURSIVE counter(val) as (

	-- initializacion => el primer nivel, o valores iniciales
	-- values(5)
	SELECT 1 as val
	UNION
	-- Query recursivo
	SELECT val + 1 FROM counter WHERE val < 10
)
-- Select de los campos
SELECT * from counter;