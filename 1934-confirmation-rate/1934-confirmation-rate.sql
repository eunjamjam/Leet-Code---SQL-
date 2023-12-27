# Write your MySQL query statement below
# confirmation rate : number of 'confirmed' 
#                     divided by the total number of requested confirmation messages
#                     did not request any confirmation message is 0 
#                       round the confirmation rate to two decimal places
select s.user_id,
       round(avg(case when c.action = 'confirmed' then 1 else 0 end),2)as confirmation_rate
from Signups s
left join confirmations c 
          on s.user_id = c.user_id
group by user_id
