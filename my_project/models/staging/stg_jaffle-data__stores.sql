select
    id          as store_id
    ,name       as store_name
    ,opened_at  as store_opened_date
    ,tax_rate   as store_tax_rate
from {{ source('jaffle_shop', 'stores') }}