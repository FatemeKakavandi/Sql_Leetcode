# Write your MySQL query statement below
SELECT T.requester_id AS id, COUNT(T.requester_id) AS NUM
FROM (
    SELECT requester_id, accepter_id
    FROM RequestAccepted 
    UNION 
    SELECT accepter_id AS requester_id, requester_id AS accepter_id
    FROM RequestAccepted
    GROUP BY requester_id, accepter_id) AS T
GROUP BY T.requester_id
ORDER BY COUNT(T.requester_id) DESC
LIMIT 1;
