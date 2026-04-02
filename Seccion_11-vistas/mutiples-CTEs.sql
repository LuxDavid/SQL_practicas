WITH claps_per_post as (

	SELECT post_id, SUM(counter) from claps
	GROUP by post_id
), posts_from_2023 as (
	SELECT * FROM posts WHERE created_at BETWEEN '2023-01-01' AND '2023-12-31'
)
	SELECT * FROM claps_per_post
		WHERE claps_per_post.post_id in (SELECT post_id from posts_from_2023)