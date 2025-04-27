# Write your MySQL query statement below
With cte as 
(
Select project_id,project.employee_id,experience_years,
rank() over (partition by project_id order by experience_years desc) as rk1
 from project,employee 
where project.employee_id = employee.employee_id 
order by experience_years desc
)
Select project_id,employee_id from cte where rk1 =1