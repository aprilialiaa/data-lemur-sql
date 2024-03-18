SELECT ROUND((SUM(order_occurrences*item_count::DECIMAL)/SUM(order_occurrences)),1)
FROM items_per_order;
