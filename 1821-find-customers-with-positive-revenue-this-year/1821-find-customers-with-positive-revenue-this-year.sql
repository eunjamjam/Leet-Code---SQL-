# Write your MySQL query statement below
# positive revenue in the 2021

select customer_id
from Customers
where year like '2021' and revenue > 0