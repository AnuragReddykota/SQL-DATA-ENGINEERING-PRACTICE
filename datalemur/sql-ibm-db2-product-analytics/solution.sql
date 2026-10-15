WITH employee_query_counts AS (
    SELECT
        e.employee_id,
        COUNT(DISTINCT q.query_id) AS unique_queries
    FROM employees e
    LEFT JOIN queries q
        ON e.employee_id = q.employee_id
        AND q.query_starttime >= '2023-07-01'
        AND q.query_starttime < '2023-10-01'
    GROUP BY e.employee_id
)
SELECT
    unique_queries,
    COUNT(*) AS employee_count
FROM employee_query_counts
GROUP BY unique_queries
ORDER BY unique_queries;
