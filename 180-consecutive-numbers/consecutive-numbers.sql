# Write your MySQL query statement below
with rnk as (
    select *,
    lead(num) over(order by id ) as next_num,
    lag(num) over(order by id) as prev_num
    from logs
)
select distinct num as consecutiveNums
from rnk
where num=next_num and num=prev_num
