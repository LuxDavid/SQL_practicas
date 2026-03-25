SELECT
  a."name" as county,
  b."name" as continent
from
  country a,
  continent b
WHERE
  a.continent = b.code
ORDER BY
  a."name" asc;