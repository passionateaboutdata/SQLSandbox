# Write your MySQL query statement below
Select unique_id, name from  Employees e LEFT OUTER JOIN EmployeeUNI u ON
 e.id = u.id 