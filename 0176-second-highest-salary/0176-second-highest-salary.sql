# Write your MySQL query statement below
# find the second highest salary from the employee table
# no second highest salary -> null

select max(salary) as SecondHighestSalary
from Employee
where salary not in (select max(salary) from employee)


