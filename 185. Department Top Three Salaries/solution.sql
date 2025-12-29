# Write your MySQL query statement below
WITH salaryRanktbl(id, name, salary, departmentId, salaryrank) AS (
    SELECT id, name, salary, departmentId, DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS salaryrank
    FROM Employee)

SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM salaryRanktbl e
LEFT JOIN Department d
ON e.departmentId=d.id
WHERE e.salaryrank<=3;
