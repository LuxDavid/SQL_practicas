CREATE EXTENSION pgcrypto;

INSERT INTO "user" (username, password)
VALUES('Lux', crypt('123456', gen_salt('bf')));

SELECT * FROM "user";

SELECT COUNT(*) FROM "user"
	WHERE username = 'Lux' AND
	password = crypt('123456', password);