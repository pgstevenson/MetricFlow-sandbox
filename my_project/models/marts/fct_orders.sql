with orders as (
    select * from {{ ref('stg_jaffle-data__orders') }}
),

customers as (
    select * from {{ ref('stg_jaffle-data__customers') }}
),

stores as (
    select * from {{ ref('stg_jaffle-data__stores') }}
)

select
    orders.order_id,
    orders.order_date,
    orders.order_total,
    stores.store_id,
    stores.store_name,
    orders.customer_id,
    customers.customer_name
from orders
left join customers on orders.customer_id = customers.customer_id
left join stores on orders.store_id = stores.store_id