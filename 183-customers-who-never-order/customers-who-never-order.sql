# Write your MySQL query statement below
Select name as Customers from Customers left join Orders  On Customers.Id = Orders.CustomerId where Orders.customerId is null