SELECT
    manufacturer,
    COUNT(drug) AS drug_count,
    ROUND(SUM(cogs - total_sales), 2) AS total_loss
FROM pharmacy_sales
WHERE cogs > total_sales
GROUP BY manufacturer
ORDER BY total_loss DESC;
