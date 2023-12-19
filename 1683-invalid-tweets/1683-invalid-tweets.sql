# Write your MySQL query statement below
# find ID of invalid tweets
# invaild - if the number of charcters used in content strecitly greater than 15
# used "char_length"
# anyorder

select tweet_id
from Tweets
where char_length(content) > 15

