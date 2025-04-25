# Write your MySQL query statement below

Select emp_id, event_day as day, SUM(out_time - in_time) total_time from Employees
group by day,emp_id