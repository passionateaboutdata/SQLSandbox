# Write your MySQL query statement below
Select 

case 

When MOD (id,2) = 0  then id-1
When MOD (id,2) <> 0 and id != (select max(id) from seat) then id+1
else id
end
as id,
student

from seat
order by id