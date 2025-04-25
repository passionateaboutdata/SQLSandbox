# Write your MySQL query statement below
With cte as 
(
Select user_id, 
RANK() over(partition by user_id order by time_stamp desc) as r ,time_stamp from logins 
where year(time_stamp) = 2020 
)
Select user_id, time_stamp as last_Stamp from cte where r =1