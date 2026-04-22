# Write your MySQL query statement below
select 
 a.project_id,
 round(cast(sum(b.experience_years) as float) / count(b.experience_years), 2) as average_years
from project a
join employee b ON a.employee_id = b.employee_id
group by a.project_id
order by a.project_id
