# Write your MySQL query statement below
Select employees.employee_id

from Employees, Employees m1 ,Employees M2

where Employees.Manager_id = M1.employee_id
and M1.Manager_Id = M2.Employee_ID
and M2.Manager_id = 1
and employees.Employee_id <> 1