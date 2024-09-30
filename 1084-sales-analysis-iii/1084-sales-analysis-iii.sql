# Write your MySQL query statement below

with First_quarter as
(
    SELECT p.product_id,product_name
    from product p 
    join sales s
    on p.product_id =s.product_id
    and sale_date between '2019-01-01' and '2019-03-31'
),
other_quater as
(
    SELECT p.product_id ,p.product_name
    from product p
    join sales s
    on p.product_id =s.product_id
    and sale_date not between '2019-01-01' and '2019-03-31'
)

SELECT DISTINCT product_id, product_name
from First_quarter
where product_id not in (SELECT product_id from other_quater)