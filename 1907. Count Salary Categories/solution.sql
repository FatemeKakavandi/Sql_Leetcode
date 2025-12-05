WITH new_cat_table AS (
    SELECT account_id, income,
           CASE 
               WHEN income < 20000 THEN 'Low Salary'
               WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
               ELSE 'High Salary'
           END AS category
    FROM Accounts
)
SELECT c.category,
       COUNT(n.account_id) AS accounts_count
FROM (
    SELECT 'Low Salary' AS category
    UNION ALL
    SELECT 'Average Salary'
    UNION ALL
    SELECT 'High Salary'
) c
LEFT JOIN new_cat_table n
    ON c.category = n.category
GROUP BY c.category;

