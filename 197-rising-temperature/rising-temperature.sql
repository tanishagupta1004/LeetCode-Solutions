SELECT w2.ID 
from weather w1, weather w2
where DATEDIFF(w2.recordDate,w1.recordDate)=1
and w2.temperature>w1.temperature