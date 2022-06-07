select 
--from track table
t.user_id,
t.event,
t.received_at as event_timestamp,
--from users table
u.created_at as user_created_at,
u.phone,
--from product_paired
pp.product_id as id_product_paired,
pp.product_name,
pp.timestamp as paired_at,
pp.deposit_id,
pp.location,
--from product returned
pr.timestamp as return_timestamp,
--from deposit_expired
de.amount_collected
from {{ ref('dev_prod_backend_tracks') }} as t
left join {{ ref('dev_prod_backend_users') }} as u
on t.user_id=u.id
left join {{ ref('dev_backend_product_paired') }} as pp
on t.user_id=pp.user_id
left join {{ ref('dev_prod_backend_product_returned') }} as pr
on t.user_id=pr.user_id
left join {{ ref('dev_prod_backend_deposit_expired') }} as de
on t.user_id=de.user_id