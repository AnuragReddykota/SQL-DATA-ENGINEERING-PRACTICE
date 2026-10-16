SELECT 
  drug,
  ROUND(total_sales - cogs,2) as total_profit
FROM pharmacy_sales
ORDER BY total_profit DESC
LIMIT 3;
