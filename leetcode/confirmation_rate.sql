select 
 a.user_id, 
 round(avg(case when action = "timeout" THEN 1 END) / COUNT(*), 2) as confirmation_rate
from Signups a
join Confirmations b ON a.user_id = b.user_id
