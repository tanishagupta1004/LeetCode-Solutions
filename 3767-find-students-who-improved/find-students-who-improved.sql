# Write your MySQL query statement below
with cte as (
SELECT student_id, subject ,
FIRST_VALUE(score) OVER(PARTition by Student_id, subject order by exam_date) as first_score,
FIRST_VALUE(score) OVER(PARTition by Student_id, subject order by exam_date desc) as latest_score
from Scores
)
select distinct * from cte
where latest_score>first_score ;
