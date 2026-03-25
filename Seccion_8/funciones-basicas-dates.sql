SELECT
  now(),
  CURRENT_DATE,
  CURRENT_TIME,
  date_part('hours', now()) as hours,
  date_part('minutes', now()) as minutes,
  date_part('seconds', now()) as seconds,
  date_part('days', now()) as days,
  date_part('months', now()) as months,
  date_part('years', now()) as years;

    SELECT * from employees
  where hire_date > date('1998-02-05')
  ORDER BY hire_date;
  
SELECT
  MAX(hire_date) as mas_nuevo, 
  MIN(hire_date) as mas_viejo
from
  employees;
  
  SELECT * FROM employees
  WHERE hire_date BETWEEN '1999-01-01' AND '2001-01-04'
  ORDER BY hire_date DESC;