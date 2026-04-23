# Write your MySQL query statement below
select 
 b.contest_id,
 round(count(b.user_id) * 100 / (select count(*) from users), 2) as percentage
from users a
join register b ON a.user_id = b.user_id
group by 1 
order by 2 desc, 1 asc
