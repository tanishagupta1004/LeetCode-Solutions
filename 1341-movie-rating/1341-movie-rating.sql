# Write your MySQL query statement below
with cte as(
select mr.*, m.title,u.name
from MovieRating mr
left join Movies m
on mr.movie_id=m.movie_id
left join Users u
on mr.user_id=u.user_id)

(select name as results
from cte
group by name
order by count(*) desc,name
limit 1)
union all
(select title
from  cte
where DATE_FORMAT(created_at, '%Y-%m')='2020-02'
group by title
order by avg(rating) desc,title
limit 1)

