SELECT a."name" as country, b.name as continent, a.continent, b.code from country a
INNER JOIN continent b on a.continent = b.code
ORDER BY a."name" asc;