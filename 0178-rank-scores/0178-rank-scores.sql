# Write your MySQL query statement below

select score, DENSE_RANK() OVER(Order by score desc) as "rank"
from Scores
