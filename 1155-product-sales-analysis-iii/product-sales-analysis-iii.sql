# Write your MySQL query statement below
Select product_id, year as first_year,quantity, price from Sales s 
where (s.year, s.product_id) IN (Select min(year),product_id from Sales y group by product_id)
