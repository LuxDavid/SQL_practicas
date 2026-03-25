CREATE SEQUENCE user_sequence;

-- DROP SEQUENCE user_sequence;

SELECT nextval('user_sequence');

SELECT currval('user_sequence'), nextval('user_sequence'), currval('user_sequence');

CREATE TABLE users7 (
	"user_id" INTEGER PRIMARY KEY DEFAULT nextval('user_sequence'),
	"username" VARCHAR
);

INSERT INTO "public"."users7" ("username") VALUES
('Lux');