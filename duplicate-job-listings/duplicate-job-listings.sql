SELECT COUNT(count_post)
FROM (
SELECT COUNT(job_id) as count_post,
  company_id
FROM job_listings
GROUP BY company_id, title, description
HAVING COUNT(job_id) > 1) q1;
