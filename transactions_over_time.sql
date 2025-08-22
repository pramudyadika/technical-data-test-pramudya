SELECT 
    EXTRACT(YEAR FROM date) AS year,
    ROUND(SUM(amount),2) AS total_spent
FROM `mandiri_dataset.transactions_data` t
JOIN `mandiri_dataset.users_data` u ON t.client_id = u.id
JOIN `mandiri_dataset.cards_data` c ON t.card_id = c.id
GROUP BY year
ORDER BY year;
