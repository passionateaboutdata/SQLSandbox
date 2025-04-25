# Write your MySQL query statement below

Select 
ROUND(SUM(case 
when order_date = customer_pref_delivery_date then 1
else 0
end) *100 / count(*),2) as immediate_percentage
from Delivery D2
