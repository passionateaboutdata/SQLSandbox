# Write your MySQL query statement below

Select 
name as warehouse_name, 
sum((width*length*height*units)) as volume

from warehouse
join products on warehouse.product_id = products.product_id
group by name