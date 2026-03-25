CREATE TABLE "public"."country_bk" (
    "code" bpchar(3) NOT NULL,
    "name" text NOT NULL,
    "continent" text NOT NULL CHECK ((continent = 'Asia'::text) OR (continent = 'South America'::text) OR (continent = 'North America'::text) OR (continent = 'Oceania'::text) OR (continent = 'Antarctica'::text) OR (continent = 'Africa'::text) OR (continent = 'Europe'::text) OR (continent = 'Central America'::text)),
    "region" text NOT NULL,
    "surfacearea" float4 NOT NULL CHECK (surfacearea >= (0)::double precision),
    "indepyear" int2,
    "population" int4 NOT NULL,
    "lifeexpectancy" float4,
    "gnp" numeric(10,2),
    "gnpold" numeric(10,2),
    "localname" text NOT NULL,
    "governmentform" text NOT NULL,
    "headofstate" text,
    "capital" int4,
    "code2" bpchar(2) NOT NULL,
    PRIMARY KEY ("code")
);

SELECT
  *
FROM
  country;

SELECT * from country_bk;

ALTER TABLE country DROP CONSTRAINT country_continent_check;

SELECT name, continent from country; 

SELECT a.name, a.continent, (SELECT "code" from continent b where b.name = a.continent) from country a;

UPDATE country a
SET continent = (SELECT "code" from continent b where b.name = a.continent);

SELECT * FROM country;

ALTER TABLE country
ALTER COLUMN continent TYPE int4
USING continent::INTEGER
;

ALTER TABLE continent
ADD CONSTRAINT continent_name_unique UNIQUE (name);

ALTER TABLE continent
ADD PRIMARY KEY (code);