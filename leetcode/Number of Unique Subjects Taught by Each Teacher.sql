# Write your MySQL query statement below
select 
 teacher_id,
 count(distinct subject_id) as cnt
from (select distinct teacher_id, subject_id, dept_id from teacher) t
group by 1
