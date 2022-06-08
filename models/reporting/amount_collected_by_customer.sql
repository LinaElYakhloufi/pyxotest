select 
    user_id,
    id_product_paired,
    location,
    sum(amount_collected) as total_amount_collected
from {{ ref('stg_orders') }} as total_amount_collected
group by 
    user_id,
    id_product_paired,
    location

