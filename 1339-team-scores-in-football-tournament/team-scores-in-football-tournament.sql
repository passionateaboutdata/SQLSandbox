# Write your MySQL query statement below
Select 
team_id,team_name,
SUM(
case 

when team_id = host_team and host_goals > guest_goals then  3
when team_id = guest_team and  guest_goals > host_goals then 3
when team_id = host_team and  guest_goals = host_goals then 1
when team_id = guest_team and  guest_goals = host_goals then 1
else  0
end) 
as num_points
from teams left join matches
ON team_id = host_team OR team_id = guest_team
group by team_id, team_name
order by num_points desc , team_id asc
