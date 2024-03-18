SELECT manufacturer,
  COUNT(drug),
  -(SUM((total_sales - cogs))) total_loss
FROM pharmacy_sales
WHERE (total_sales - cogs) < 0
GROUP BY 1
ORDER BY 3 DESC
