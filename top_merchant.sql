SELECT 
    merchant_id,
    round(SUM(amount),2) AS total
from `mandiri_dataset.transactions_data` t
join `mandiri_dataset.users_data` u ON t.client_id = u.id
join `mandiri_dataset.cards_data` c ON t.card_id = c.id
GROUP BY merchant_id
ORDER BY total DESC
LIMIT 10;
