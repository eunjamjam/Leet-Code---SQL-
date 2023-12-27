# Write your MySQL query statement below
# find the average selling price for each product 
# rounded 2 decimal places

select p.product_id,
       ifnull(round(sum(u.units*p.price)/sum(u.units),2),0) as average_price    
from prices p
left join UnitsSold u on p.product_id = u.product_id  
                      and u.purchase_date between p.start_date and p.end_date
group by product_id
order by product_id