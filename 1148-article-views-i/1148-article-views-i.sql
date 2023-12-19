# Write your MySQL query statement below
# Find all the authors -> views at least one of their own ariticles
# author_id = viewer_id
# id ascending order

select distinct author_id as id
from Views
where author_id = viewer_id
order by id asc