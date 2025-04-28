
# Write your MySQL query statement below

Select distinct name, IFNULL(sum(distance) Over(partition by user_id),0) as travelled_distance
from Users left join Rides
ON
Users.id = Rides.User_ID
order by travelled_distance desc , name asc