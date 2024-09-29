# Write your MySQL query statement below
SELECT actor_id ,
 Director_id
FROM ActorDirector
GROUP BY actor_id ,Director_id
HAVING COUNT(timestamp)>=3 