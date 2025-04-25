# Write your MySQL query statement below

with cte as
(
select count(order_number) as ordercounts, customer_number from Orders
group by customer_number 
order by ordercounts desc limit 1
)
Select customer_number from cte