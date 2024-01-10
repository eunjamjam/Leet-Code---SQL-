# rated the greatest number of movies
# find the movie name with the highest average rating February 2020
(select u.name as results
from users u
join movieRating r on r.user_id = u.user_id
group by r.user_id
order by count(rating) DESC,name
limit 1)

union all

(select m.title as results
from movies m 
join movierating r on r.movie_id = m.movie_id
where created_at like '2020-02%'
group by title
order by avg(rating) DESC,title
limit 1)

