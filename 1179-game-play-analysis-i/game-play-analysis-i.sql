# Write your MySQL query statement below
with cte as (
    select player_id, event_date, RANK() OVER(partition by player_id order by event_date) as rnk
    from Activity
 )
 select player_id,event_date as first_login  from cte
 where rnk=1;