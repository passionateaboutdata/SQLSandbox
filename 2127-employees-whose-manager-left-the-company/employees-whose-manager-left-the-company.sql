# Write your MySQL query statement below
Select e.employee_id as employee_id from

 Employees e LEFT JOIN Employees m
ON e.manager_id = m.employee_id
where m.employee_id is NULL
and e.manager_id is NOT NULL
and e.salary <  30000
order by e.employee_id