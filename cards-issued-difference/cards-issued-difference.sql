SELECT card_name,
  MAX(issued_amount) - MIN(issued_amount) diff
FROM monthly_cards_issued
GROUP BY 1
ORDER BY 2 desc;
