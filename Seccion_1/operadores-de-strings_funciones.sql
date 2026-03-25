SELECT
  id,
  UPPER(name) AS upper_name,
  LOWER(name) AS lower_name,
  LENGTH(name) AS length_name,
  (20 * 2) as constante,
  '*'||id||'-'||name||'*' as barcode,
  CONCAT('*',id,'-',name,'*'),
  name
FROM
  users;

-----------------------------------------------------------------------------
  select
  name,
  SUBSTRING(name, 0, 5),
  POSITION(' ' in name),
  SUBSTRING(name, 0, POSITION(' ' in name)) as first_name,
  SUBSTRING(name, POSITION(' ' in name) + 1) as last_name,
  TRIM(SUBSTRING(name, POSITION(' ' in name))) as trimmed_last_name
from
  users;

-----------------------------------------------------------------------------
  UPDATE
    users
SET
    first_name = SUBSTRING(name,0,POSITION(' ' IN name)),
    last_name = SUBSTRING(name, POSITION(' ' IN name) + 1);
    
 select * from users;