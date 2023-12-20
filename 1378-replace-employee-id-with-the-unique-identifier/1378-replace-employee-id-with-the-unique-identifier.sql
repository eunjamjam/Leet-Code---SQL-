# Write your MySQL query statement below
# Unique Id name
# does not have unique ID -> null

select u.unique_id as unique_id, E.name as name
from Employees E
left join EmployeeUNI U on u.id= E.id 