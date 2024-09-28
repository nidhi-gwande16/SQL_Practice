# Write your MySQL query statement below
WITH cte AS 
(   SELECT customer_number ,count(order_number) as OrdNUM
    FROM Orders
    GROUP BY customer_number
)
SELECT customer_number
FROM cte 
where OrdNum=(SELECT Max(OrdNum) FROM cte)