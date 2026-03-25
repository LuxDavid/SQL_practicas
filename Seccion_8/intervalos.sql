SELECT
MAX(hire_date) + INTERVAL '1 days' as days,
MAX(hire_date) + INTERVAL '1 month' as months,
MAX(hire_date) + INTERVAL '1 year' as years,
MAX(hire_date) + INTERVAL '1 years' + INTERVAL '1 day' as years,
date_part('year', now()),
make_interval(years := date_part('year', now()):: INTEGER),
MAX(hire_date) + make_interval(Years:=23)
FROM
employees;