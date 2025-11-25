SELECT ROUND(
    COUNT(a.player_id)/(SELECT COUNT(DISTINCT c.player_id) FROM Activity c)
    ,2) AS fraction
From Activity a
WHERE (a.player_id,DATE_SUB(a.event_date,INTERVAL 1 DAY)) IN(
    SELECT b.player_id, MIN(b.event_date)
    FROM Activity b
    GROUP BY b.player_id
);




