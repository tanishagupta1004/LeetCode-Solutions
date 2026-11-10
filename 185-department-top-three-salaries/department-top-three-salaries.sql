# Write your MySQL query statement below
# Write your MySQL query statement below
with cte as (
    select d.name as Department, e.name as Employee, e.Salary as Salary,
    DENSE_RANK() OVER(PARTITION BY d.name order by e.salary desc) as rnk
    from Employee e
    join Department d
    where e.departmentID=d.id
)
select Department, Employee, Salary from cte
where rnk<4
order by rnk desc;