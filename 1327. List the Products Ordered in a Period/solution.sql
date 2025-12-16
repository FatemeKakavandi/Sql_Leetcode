# Write your MySQL query statement below
SELECT product_name,SUM(unit) AS unit
FROM Products p
LEFT JOIN Orders o
On p.product_id=o.product_id
WHERE MONTH(o.order_date)=2 AND YEAR(o.order_date)=2020
GROUP BY p.product_name
HAVING 100<=SUM(o.unit);
