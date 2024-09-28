# Write your MySQL query statement below
Select 
t.request_at as Day,
ROUND(SUM(t.status !='completed')/COUNT(*),2) as 'Cancellation Rate'
from trips t
INNER JOIN Users AS Clients
ON (t.client_id = Clients.users_id)
INNER JOIN Users AS Drivers 
ON (t.Driver_id =Drivers.users_id)
WHERE Clients.banned='No'
AND Drivers.banned='No'
AND t.request_at BETWEEN '2013-10-01' AND '2013-10-03'
GROUP BY 1;
