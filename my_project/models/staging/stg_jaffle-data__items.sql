select
    id          as item_id
    ,order_id   as order_id
    ,sku        as item_sku
from {{ source('jaffle_shop', 'items') }}