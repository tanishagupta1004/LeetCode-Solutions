# Write your MySQL query statement below
with cte as
(
select *, lead(id) over(order by id) as next ,lag(id) over(order by id)as prev
from Seat)
select case when((id %2=1) and next is not null )then next
when(id%2=0 )then prev
else
id
end as id, student
from cte
order by id