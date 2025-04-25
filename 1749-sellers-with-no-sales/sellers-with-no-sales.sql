# Write your MySQL query statement below
Select seller_name from Seller where seller_id not in (Select seller_id from Orders where Year(sale_date) = 2020) order by seller_name asc