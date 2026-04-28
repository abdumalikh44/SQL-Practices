# Write your MySQL query statement below
select
 activity_date as day,
 count(user_id) as active_users
from activity
where (user_id, activity_date) IN (select user_id, count(activity_date) from activity group by user_id)
