# Write your MySQL query statement below
DELETE P1
FROM PERSON P1
INNER JOIN PERSON P2
ON P1.email=p2.email
where
 p1.id>p2.id
