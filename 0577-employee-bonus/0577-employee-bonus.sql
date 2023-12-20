# Write your MySQL query statement below
select E.name as name,
       B.bonus as bonus
from Employee E
left join Bonus B 
          on E.empId = B.empId
where bonus < 1000 or bonus is null
     