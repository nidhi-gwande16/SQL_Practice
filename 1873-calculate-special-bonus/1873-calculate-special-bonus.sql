# Write your MySQL query statement below
SELECT employee_id ,
CASE WHEN employee_id%2 <> 0
 AND name NOT LIKE 'M%' 
 THEN Salary
 ELSE 0 END AS bonus
FROM Employees
 Order by employee_id;
