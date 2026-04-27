# Write your MySQL query statement below
Select name, bonus 
from employee e LEFT JOIN bonus b
ON e.empId = b.empID
where (b.bonus < 1000 or b.bonus is NULL)
