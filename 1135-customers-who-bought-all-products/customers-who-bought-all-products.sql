SELECT c.customer_id
FROM Customer c
group by c.customer_id
having count(distinct c.product_key) = 
(Select count(*) from Product
)