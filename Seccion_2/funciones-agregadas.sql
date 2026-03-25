select
  count(*) as total_users,
  MIN(followers) as min_followers,
  MAX(followers) as max_followers,
  ROUND(AVG(followers)) as avg_followers,
  SUM(followers) / COUNT(*) as avg_manual
FROM
  users;
--------------------------------------------------------
  SELECT
  first_name,
  last_name,
  followers
FROM
  users
where
  followers = 4
  OR followers = 4999;

-------------------------------------------------------
SELECT
  COUNT(*),
  followers
FROM
  users
WHERE
  followers = 4
  or followers = 4999
GROUP BY
  followers
ORDER BY
  followers DESC;

-------------------------------------------------------
SELECT
  COUNT(*),
  followers
FROM
  users
WHERE
  followers BETWEEN 4500 and 4999
GROUP BY
  followers
ORDER BY
  followers DESC;

-------------------------------------------------------
SELECT
  COUNT(*) as total,
  country
FROM
  users
GROUP BY
  country
HAVING
  count(*) BETWEEN 1 AND 5
ORDER BY
  COUNT(*) DESC;

-------------------------------------------------------
SELECT DISTINCT country FROM users;

-------------------------------------------------------
SELECT
  COUNT(*),
  SUBSTRING(email, POSITION('@' IN email) + 1) AS DOMAIN
FROM
  users
GROUP BY
  SUBSTRING(email, POSITION('@' IN email) + 1)
HAVING
  COUNT(*) > 1
ORDER BY
  SUBSTRING(email, POSITION('@' IN email) + 1) asc;

-------------------------------------------------------
SELECT
  *
FROM(
    SELECT
      COUNT(*) AS total,
      SUBSTRING(email, POSITION('@' IN email) + 1) AS DOMAIN,
      'Fernando' AS name,
      37 AS age
    FROM
      users
    GROUP BY
      SUBSTRING(email, POSITION('@' IN email) + 1)
    HAVING
      COUNT(*) > 1
    ORDER BY
      SUBSTRING(email, POSITION('@' IN email) + 1) ASC
  ) AS email_domains;