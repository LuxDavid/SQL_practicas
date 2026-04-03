SELECT followers.*, leader.name as leader, follower.name as follower FROM followers
INNER JOIN "user" leader ON leader.id = followers.leader_id
INNER JOIN "user" follower ON follower.id = followers.follower_id
;

--Ejemplo sin recursividad

SELECT follower_id FROM followers where leader_id = 1;

SELECT * FROM followers WHERE leader_id in  (2,3);

SELECT * FROM followers WHERE leader_id in  (SELECT follower_id FROM followers where leader_id = 1);