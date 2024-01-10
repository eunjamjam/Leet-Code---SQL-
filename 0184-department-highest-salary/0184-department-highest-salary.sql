# find employees who have the highes salary in each of th departments
select  d.name as Department,e.name as Employee, e.salary as Salary 
from employee e
Inner join department d on e.departmentId = d.id 
where (e.departmentId,e.Salary) IN 
       (select departmentId, max(salary)
        from employee
        group by departmentID)

