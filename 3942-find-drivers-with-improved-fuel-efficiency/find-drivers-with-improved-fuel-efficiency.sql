# Write your MySQL query statement below

with main as (
select 
t1.driver_id,
d.driver_name,
round(avg(t1.distance_km / t1.fuel_consumed), 2) as first_half_avg,
round(avg(t2.distance_km / t2.fuel_consumed), 2) as second_half_avg,
round(avg(t2.distance_km / t2.fuel_consumed) - avg(t1.distance_km / t1.fuel_consumed),2) as efficiency_improvement
from trips t1
join trips t2
on t1.driver_id = t2.driver_id
join drivers d
on t1.driver_id = d.driver_id
and month(t1.trip_date) in (1, 2, 3, 4, 5, 6)
and month(t2.trip_date) in (7, 8, 9, 10, 11, 12)
group by t1.driver_id, d.driver_name
order by efficiency_improvement desc, d.driver_name
)

select *
from main
where efficiency_improvement > 0