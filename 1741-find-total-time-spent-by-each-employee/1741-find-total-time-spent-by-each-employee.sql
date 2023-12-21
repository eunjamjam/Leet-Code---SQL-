# Write your MySQL query statement below
# calculate total time in minutes
# time spent ( out_time - in_time)

select event_day as day,
       emp_id,
       sum(out_time - in_time) as total_time
from Employees
group by day,emp_id


