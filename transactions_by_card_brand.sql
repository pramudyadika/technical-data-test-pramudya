select 
    card_brand,
    count(*) as total_transactions
from `mandiri_dataset.transactions_data` t
join `mandiri_dataset.users_data` u ON t.client_id = u.id
join `mandiri_dataset.cards_data` c ON t.card_id = c.id
group by 1
