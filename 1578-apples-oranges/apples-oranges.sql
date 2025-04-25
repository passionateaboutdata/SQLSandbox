# Write your MySQL query statement below
Select apple_sales.sale_date,apple_sales.sold_num -orange_sales.sold_num as diff
 from sales orange_sales , sales apple_sales
where apple_sales.sale_date = orange_sales.sale_date
and apple_sales.fruit = 'apples'
and orange_sales.fruit = 'oranges'