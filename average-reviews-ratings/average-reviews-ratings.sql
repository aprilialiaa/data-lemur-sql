SELECT extract(month from submit_date) mon,
  product_id,
  ROUND(AVG(stars),2)
FROM reviews
GROUP BY 1,2
ORDER BY 1,2;
