create table IF NOT EXISTS users (name VARCHAR(10) UNIQUE);

INSERT INTO users (name) 
VALUES ('mayuri3');

UPDATE
	users
SET
	name= 'Lux2'
WHERE
	name= 'Lux';
	
SELECT * FROM users;

SELECT * from users LIMIT 2 OFFSET 2;

SELECT * FROM users WHERE name LIKE 'may%';

SELECT * FROM users WHERE name LIKE '%L%';

SELECT * FROM users WHERE name LIKE '_ay%';

-- DELETE from users WHERE name LIKE '_ay%';

-- DELETE FROM users;

-- DROP TABLE users;

-- TRUNCATE TABLE users;