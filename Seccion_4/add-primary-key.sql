SELECT code FROM country;

ALTER TABLE country ADD PRIMARY KEY (code);

select * from country WHERE code = 'NLD';

DELETE FROM country WHERE code = 'NLD' AND code2 = 'NA';