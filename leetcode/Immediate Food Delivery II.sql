# Write your MySQL query statement below
select
 round(sum(case when order_date = customer_pref_delivery_date then 1 else 0 end) / count(order_date) * 100) as immediate_percentage
from delivery
