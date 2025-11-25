# Write your MySQL query statement below
SELECT e.employee_id, e.name, SUM(CASE WHEN b.reports_to=e.employee_id THEN 1 ELSE 0 END) AS reports_count, ROUND(SUM(CASE WHEN b.reports_to=e.employee_id THEN b.age ELSE 0 END)/SUM(CASE WHEN b.reports_to=e.employee_id THEN 1 ELSE 0 END)) AS average_age
FROM Employees e, Employees b
WHERE e.employee_id=b.reports_to
GROUP BY e.employee_id
ORDER BY e.employee_id;
