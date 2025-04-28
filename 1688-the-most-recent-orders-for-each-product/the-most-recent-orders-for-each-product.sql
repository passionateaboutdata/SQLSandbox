# Write your MySQL query statement below

With cte as
(
Select  p.product_name,p.product_id,O.order_id, order_date,
rank() OVER (partition by O.product_id order by order_date desc) rk1

from products p, Orders O
where p.product_id = O.product_id
)
Select product_name,product_id,order_id, order_date from cte where rk1 =1
order by product_name asc, order_id asc

