SELECT user_id,
    EXTRACT(DAY FROM(MAX(post_date) - MIN(post_date))) AS difference
FROM posts
WHERE extract(YEAR from post_date) = 2021
GROUP BY user_id
HAVING extract(day from MIN(post_date)) - extract(day from MAX(post_date)) > 0
