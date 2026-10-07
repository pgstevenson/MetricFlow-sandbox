select
    id              as order_id
    ,customer       as customer_id
    ,ordered_at     as order_date
    ,store_id       as store_id
    ,subtotal       as order_subtotal
    ,tax_paid       as order_tax_paid
    ,order_total    as order_total
from {{ source('jaffle_shop', 'orders') }}