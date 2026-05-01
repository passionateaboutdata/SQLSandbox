Select ROUND(COUNT(DISTINCT b.player_id) /
COUNT(DISTINCT a.player_id),2) as FRACTION

FROM

(SELECT 
player_id, min(event_date) as firstlogindate
FROM Activity group by player_id) 
a
LEFT JOIN
(SELECT 
player_id, event_date
FROM Activity ) b
ON a.player_id = b.player_id
and DATEDIFF(b.event_date, a.firstlogindate) = 1
