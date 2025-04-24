# Write your MySQL query statement below

With cte as 
(
Select '[0-5>' as bin, 0 as min_duration,  5*60 as max_duration
UNION 
Select '[5-10>' as bin, 5*60+1 as min_duration,  10*60 as max_duration
UNION
Select '[10-15>' as bin, 10*60+1 as min_duration,  15*60 as max_duration
UNION
Select '15 or more' as bin, 15*60+1 as min_duration,  2147483647 as max_duration
)
Select bin,count(session_id) as total from cte left join sessions ON duration >= min_duration and duration <=max_duration 
group by bin