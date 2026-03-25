--Quiero que me muestren el país con m}as ciudades
--Campos: totla de ciudades y el nombre del país
--usar inner join

SELECT COUNT(*) as Total, b.name as country from city a
INNER JOIN country b on a.countrycode = b.code
GROUP by b."name"
ORDER BY count(*) DESC
LIMIT 1;

-- ¿Quiero sabe los idiomas oficiales que se hablan por continente?

SELECT * FROM countrylanguage where isofficial = true;

SELECT * FROM country;

SELECT * FROM continent;

SELECT DISTINCT a."language", c."name" as continent from countrylanguage a
INNER JOIN country b on a.countrycode = b.code
INNER JOIN continent c on b.continent = c.code
WHERE a.isofficial = true;

-- ¿CUantos idiomas oficiales se hablan por continente?
SELECT COUNT(*), continent from (
SELECT DISTINCT a."language", c."name" as continent from countrylanguage a
INNER JOIN country b on a.countrycode = b.code
INNER JOIN continent c on b.continent = c.code
WHERE a.isofficial = true
) as totales
GROUP by continent
ORDER by COUNT ASC;

SELECT DISTINCT a."language", c."name" as continent from countrylanguage a
INNER JOIN country b on a.countrycode = b.code
INNER JOIN continent c on b.continent = c.code
WHERE a.isofficial = true;

SELECT DISTINCT a."language", c."name" as continent from countrylanguage a
INNER JOIN country b on a.countrycode = b.code
INNER JOIN continent c on b.continent = c.code
INNER JOIN language d ON d.code = a.languagecode
WHERE a.isofficial = true;
