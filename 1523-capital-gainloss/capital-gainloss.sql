# Write your MySQL query statement below
SELECT stock_name,
sum(case when operation='Buy' then -price 
when operation='Sell' then price
end )as capital_gain_loss
from Stocks
group by stock_name
order by operation_day