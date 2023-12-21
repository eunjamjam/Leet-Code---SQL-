# Write your MySQL query statement below
select w.name as warehouse_name, 
       sum(w.units*p.width*p.length*p.height) as volume
from Warehouse w
left join products p 
        on w.product_id = p.product_id
group by name



