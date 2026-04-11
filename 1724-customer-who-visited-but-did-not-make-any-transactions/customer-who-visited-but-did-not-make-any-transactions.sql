# Write your MySQL query statement below
Select customer_id, count(v.visit_id) as count_no_trans 
from visits v LEFT JOIN transactions t
ON v.visit_id = t.visit_id
where t.visit_id is NULL
group by customer_id