# Write your MySQL query statement below
select p.product_name, sum(o.unit) as unit
from Products p
left join Orders o
on p.product_id=o.product_id
where DATE_FORMAT(order_date, '%Y-%m')='2020-02'
group by p.product_id
having sum(o.unit)>=100