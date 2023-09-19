# Write your MySQL query statement below
with cte as
(SELECT *, lead(num, 1) over() as next, lead(num,2) over (order by id) as prev
from Logs)
select distinct num as ConsecutiveNums
from cte
where num=next and num=prev