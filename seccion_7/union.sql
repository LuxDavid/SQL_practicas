select code, name, '123' from continent where name LIKE '%America%'
UNION
SELECT code, name, 'otra cosa' from continent WHERE code in (3,5)
ORDER BY "name" ASC;