SELECT user_id
FROM texts t
JOIN emails e
  ON t.email_id = e.email_id
WHERE extract(day from action_date) - extract(day from signup_date) = 1;
