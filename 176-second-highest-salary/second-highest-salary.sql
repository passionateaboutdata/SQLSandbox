# Write your MySQL query statement below


With cte as 
(
Select salary,salaryrank FROM

(Select salary, dense_rank() over (order by salary desc) as salaryrank

    FROM Employee) as rankedSalaries
    where salaryrank =2
)

Select min(case when salaryrank=2 then Salary else null end) as "SecondHighestSalary"
from cte
limit 1




