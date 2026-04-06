CREATE OR REPLACE PROCEDURE insert_region_proc(int, VARCHAR)
AS $$
BEGIN
	INSERT INTO regions(region_id, region_name)
	VALUES($1, $2);

		raise notice 'Variable 1: %, %', $1, $2;
-- 	ROLLBACK;
COMMIT;

END;
$$ LANGUAGE plpgsql;

CALL INSERT_region_proc(5, 'Central America');


SELECT * FROM regions;