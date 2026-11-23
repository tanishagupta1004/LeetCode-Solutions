with cte as (
    select email, count(*)
    from Person
    group by email
    having count(email)>1
)
select email from cte;