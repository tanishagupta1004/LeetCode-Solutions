# Write your MySQL query statement below
select w1.id from weather W1, WEATHER W2
WHERE DATEDIFF(W1.recordDate, W2.recordDate)=1 and
w2.temperature<w1.temperature
