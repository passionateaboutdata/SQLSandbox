# Write your MySQL query statement below

Select name from SalesPerson where sales_id NOT in (Select sales_id from Orders, Company where Company.com_id = Orders.Com_id and name = 'RED')