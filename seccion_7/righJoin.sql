SELECT
  A.NAME AS COUNTRY,
  A.CONTINENT AS CONTINENTCODE,
  B.NAME AS continentName
FROM
  COUNTRY A
  RIGHT JOIN CONTINENT B ON A.CONTINENT = B.CODE
WHERE
  A.continent IS NULL
ORDER BY
  A.name DESC;

--Ejemplo con agregations
(select COUNT(*) AS count, b.name FROM country a 
INNER JOIN continent b on a.continent = b.code
GROUP BY b.name)
UNION
(SELECT 0 as count, b.name FROM country a 
RIGHT JOIN continent b on a.continent = b.code
WHERE a.continent is NULL
GROUP by b.name
)
ORDER by count;

--Ejemplo anterior pero con beautify
(
  select
    COUNT(*) AS count,
    b.name
  FROM
    country a
    INNER JOIN continent b on a.continent = b.code
  GROUP BY
    b.name
)
UNION
(
  SELECT
    0 as count,
    b.name
  FROM
    country a
    RIGHT JOIN continent b on a.continent = b.code
  WHERE
    a.continent is NULL
  GROUP by
    b.name
)
ORDER by
  count;