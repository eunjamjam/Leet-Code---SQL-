# Write your MySQL query statement below
# id,name  : who are enrolled in departments no longer exist
# anyorder
select id, name
from Students
where id not in (select s.id 
                      from students s
                      inner join departments d on
                                  s.department_id = d.id
                      group by d.id)

   
