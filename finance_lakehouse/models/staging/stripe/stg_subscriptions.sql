{{ config(materialized='view') }}

select
    subscription_id,
    customer_id,
    price_id,
    quantity::int      as quantity,
    status,
    cast(created as timestamp) as created_at
from {{ source('stripe', 'stripe_subscriptions') }}
