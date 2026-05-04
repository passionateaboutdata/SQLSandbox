# Write your MySQL query statement below
Delete from Person 
where id NOT IN
(
  Select id from
    (Select min(id) as id from Person
group by email) as temp
)
