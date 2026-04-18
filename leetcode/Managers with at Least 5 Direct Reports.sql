# Write your MySQL query statement below
select 
a.name
from Employee a
where a.id IN(
    select managerID
    from employee
    group by managerID
    having count(*) >= 5
)

