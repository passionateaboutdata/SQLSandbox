
With cte as 
(
select *, rank()
over (partition by customer_id order by order_date asc) rk1 from delivery
)

Select Round(count(*)*100 /(Select count(distinct customer_id) from delivery),2) as immediate_percentage from cte where order_date = customer_pref_delivery_date and rk1 =1