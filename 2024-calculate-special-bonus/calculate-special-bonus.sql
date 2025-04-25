# Write your MySQL query statement below
Select 
employee_id ,
case 
When MOD(employee_id,2) = 1 and name not like 'M%' then  salary
else 0 
end as bonus 
from employees
order by employee_id
