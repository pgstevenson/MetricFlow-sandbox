select
    id          as supply_id
    ,name       as supply_name
    ,cost       as supply_cost
    ,perishable as supply_perishable
    ,sku        as supply_sku
from {{ source('jaffle_shop', 'supplies') }}