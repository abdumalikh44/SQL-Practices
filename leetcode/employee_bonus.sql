# Write your MySQL query statement below
select
a.name, 
b.bonus
from employee a
left join bonus b ON a.empID = b.empID 
where b.bonus < 1000 or b.bonus IS NULL
