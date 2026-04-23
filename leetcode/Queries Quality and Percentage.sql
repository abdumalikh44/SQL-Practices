# Write your MySQL query statement below
with dog as (
 select
  query_name,
  round(sum(rating / position), 2) as quality,
  round(1 / count(query_name) * 100, 2) as poor_query_percentage
 from queries
 where query_name = "dog"
 group by 1
)

, cat as(
select
  query_name,
  round(sum(rating / position), 2) as quality,
  round(1 / count(query_name) * 100, 2) as poor_query_percentage
 from queries
 where query_name = "cat"
)

select * from dog
union all 
select * from cat
