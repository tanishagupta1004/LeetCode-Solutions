# Write your MySQL query statement below
#Asingle number is a number that appeared only once in the MyNumbers table.

#Write an SQL query to report the largest single number. If there is no single number, report null.
select max(num) as num
from
(select num
from MyNumbers
group by num
having count( num)=1)n