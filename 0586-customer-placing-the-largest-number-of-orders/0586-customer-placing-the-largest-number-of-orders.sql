# Write your MySQL query statement below
# custoemr_number :  largest number of orders

select customer_number
from orders 
group by customer_number
order by count(*) desc limit 1

