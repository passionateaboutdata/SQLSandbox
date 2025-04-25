Select OrderA.customer_id, OrderB.customer_name 
from 
(Select customers.customer_id as Customer_ID,customer_name from Orders, Customers where product_name in ('A') and 
Orders.customer_id = Customers.Customer_ID) OrderA
Join
(Select customers.customer_id as Customer_ID,customer_name from Orders, Customers where product_name in ('B') and 
Orders.customer_id = Customers.Customer_ID) OrderB
On OrderA.customer_id = OrderB.Customer_ID

Where OrderA.Customer_Id Not in (Select customer_id as Customer_ID from Orders where product_name in ('C') ) 

group by OrderA.customer_id, OrderB.customer_name 
