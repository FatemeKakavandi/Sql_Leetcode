# Write your MySQL query statement below
SELECT ROUND(COUNT(customer_id)*100/(SELECT COUNT(Distinct customer_id) FROM Delivery),2) AS immediate_percentage
FROM Delivery 
WHERE (customer_id,customer_pref_delivery_date )IN (
    SELECT customer_id,MIN(order_date)
    FROM Delivery
    GROUP BY customer_id);

