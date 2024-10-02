
with cte as 
(Select count(*) as tot_cnt ,
SUM(CASE WHEN action = "confirmed" THEN 1 ELSE 0 END) AS con_cnt,
s.user_id from Signups s LEFT JOIN Confirmations C 
ON s.user_id = c.user_id
group by s.user_id
)
Select user_ID , ROUND(con_cnt/tot_cnt,2) as confirmation_rate from cte
