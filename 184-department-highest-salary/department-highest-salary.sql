# Write your MySQL query statement below

Select d.name as Department, e.name as Employee,e.salary as Salary from department d, employee e
where d.Id = e.DepartmentId 
and 
(d.name,salary)
IN
(
Select department.name as Department,
max(salary) as salary from Employee, Department 
where Employee.DEpartmentId = DEpartment.ID
group by department.name
)