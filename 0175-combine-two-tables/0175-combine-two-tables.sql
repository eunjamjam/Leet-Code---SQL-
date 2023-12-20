# Write your MySQL query statement below
select p.firstName as firstName,
       p.lastName as lastName,
       A.city as city,
       A.state as state
from Person P
left join Address A 
     on p.personId = A.personId
