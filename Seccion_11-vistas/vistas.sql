select * from claps;

CREATE OR REPLACE VIEW comments_per_week as
select
  date_trunc('week', posts.created_at) as weeks,
  sum(claps.counter) as total_claps,
  COUNT(DISTINCT posts.post_id) as number_of_posts,
  COUNT(*) as number_of_claps
from
  posts
  INNER JOIN claps on claps.post_id = posts.post_id
GROUP BY
  weeks
ORDER BY
  weeks desc;

SELECT * FROM claps where post_id = 1;

DROP VIEW comments_per_week;