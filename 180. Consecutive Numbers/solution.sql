# Write your MySQL query statement below
SELECT a.num AS ConsecutiveNums
FROM Logs a
WHERE a.id IN(SELECT id FROM Logs b WHERE a.num=b.num )
AND a.id+1 IN(SELECT id FROM Logs b WHERE a.num=b.num )
AND a.id+2 IN(SELECT id FROM Logs b WHERE a.num=b.num )
GROUP BY a.num;
