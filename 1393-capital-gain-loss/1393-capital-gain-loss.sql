# Write your MySQL query statement below
# captial gain/loss
#total gain or loss after bying and selling the sotck one or many times
#any order

select stock_name, 
       sum(if(operation = 'buy', -price, price)) as capital_gain_loss
from stocks
group by stock_name
order by stock_name
