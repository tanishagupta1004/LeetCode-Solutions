# Write your MySQL query statement below
WITH CTE AS (
SELECT customer_number, COUNT(CUSTOMER_NUMBER) AS CNT
FROM Orders
group by customer_number
ORDER BY CNT DESC)

SELECT CUSTOMER_NUMBER
FROM CTE
LIMIT 1;