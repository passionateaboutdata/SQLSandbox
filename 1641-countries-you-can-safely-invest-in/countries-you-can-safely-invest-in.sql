Select c.name as Country
from
country c join person p 
ON c.country_code = left(p.phone_number,3)
join calls
ON p.id in (calls.caller_id,calls.callee_id)
group by c.Name
having AVG(calls.duration) > (Select Avg(duration) from calls)