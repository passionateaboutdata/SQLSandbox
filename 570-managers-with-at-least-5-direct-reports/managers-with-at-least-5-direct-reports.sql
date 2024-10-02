# Write your MySQL query statement below
Select e1.name from Employee e1, employee m
where e1.id = m.managerId
group by m.managerId 
having count(m.managerId) >=5
