# Write your MySQL query statement below
# product_name, year, price for each sale_id 
#from Sales table 

select  p.product_name as product_name , s.year as year, s.price as price
from Sales S
left join Product p on s.product_id = p.product_id