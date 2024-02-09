SELECT city, COUNT(DISTINCT order_id) as total_order FROM trades t
JOIN users u
ON t.user_id = u.user_id
WHERE status = 'Completed'
GROUP BY city
ORDER BY 2 DESC
LIMIT 3;
