-- models/stages/std_orders.sql

with raw_orders as (
    select
        id,
        user_id,
        order_date,
        status
    from {{ source('raw', 'orders') }}
)

select
    id as order_id,
    user_id,
    order_date,
    status
from raw_orders