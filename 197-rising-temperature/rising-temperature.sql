# Write your MySQL query statement below
Select w2.id
from weather w1, weather w2
where Datediff(w2.recordDate,w1.recordDate) = 1
and w2.temperature > w1.temperature