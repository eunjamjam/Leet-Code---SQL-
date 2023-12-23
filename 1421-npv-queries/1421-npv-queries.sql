# Write your MySQL query statement below
# find the npv of each query 

select q.id,q.year,ifnull(n.NPV,0) as NPV
from queries q 
left join NPV n 
          on q.id=n.id and n.year = q.year

            

