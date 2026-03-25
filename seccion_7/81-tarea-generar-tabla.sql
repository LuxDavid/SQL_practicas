

-- Count Union - Tarea
-- Total |  Continent
-- 5	  | Antarctica
-- 28	  | Oceania
-- 46	  | Europe
-- 51	  | America
-- 51	  | Asia
-- 58	  | Africa

--Primera forma de obtener el resultado
SELECT COUNT(*) as Total, b.name from country a
INNER JOIN continent b on a.continent = b.code
WHERE b.name NOT LIKE '%America%'
GROUP BY b."name"
ORDER BY COUNT(*) asc;


--Segunda forma de obtener el resultado
SELECT code, name from continent;
(
  SELECT
    count(*) as Total,
    b.name
  from
    country a
    INNER JOIN continent b on a.continent = b.code
  WHERE
    b.code not in (4, 6, 8)
  GROUP BY
    b.name
)
UNION
(
  SELECT
    count(*) as total,
    'America'
  from
    country a
    INNER JOIN continent b on a.continent = b.code
  WHERE
    b.code in (4, 6, 8)
)
ORDER by
  total asc;