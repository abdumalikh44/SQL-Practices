# Write your MySQL query statement below
select 
a.student_id,
a.student_name,
b.subject_name,
COUNT(c.subject_name) as attended_exams
from students a 
cross join subjects b
left join examinations c ON a.student_id = c.student_id AND c.subject_name = b.subject_name
group by 1, 2, 3
order by 1, 3
