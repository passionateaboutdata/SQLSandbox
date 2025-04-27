# Write your MySQL query statement below
Select player_id,device_id 
from Activity
where 

(player_id,event_date)
IN
(Select player_id,Min(event_date) from activity group by player_id)