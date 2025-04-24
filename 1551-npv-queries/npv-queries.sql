# Write your MySQL query statement below

Select queries.id, queries.year,ifnull(npv,0) as npv from queries left join npv on queries.id = npv.id and queries.year = npv.year