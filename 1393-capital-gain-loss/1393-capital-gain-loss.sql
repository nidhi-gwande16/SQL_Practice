# Write your MySQL query statement below
SELECT stock_name ,
SUM(CASE WHEN operation='Buy' 
   THEN price*-1 ELSE price END ) AS capital_gain_loss 
FROM Stocks
group by stock_name
