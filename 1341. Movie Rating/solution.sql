# Write your MySQL query statement below
(SELECT u.name AS results
FROM Users u
LEFT JOIN MovieRating mr
ON u.user_id=mr.user_id
GROUP BY mr.user_id
ORDER BY COUNT(*) DESC,u.name
LIMIT 1)
UNION ALL
(SELECT m.title AS results
FROM Movies m
LEFT JOIN MovieRating mr
ON m.movie_id=mr.movie_id
WHERE created_at LIKE '2020-02%'
GROUP BY mr.movie_id
ORDER BY AVG(mr.rating) DESC,m.title
LIMIT 1);
