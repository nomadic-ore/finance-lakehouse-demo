{{ config(materialized='view') }}

select
    customer_id,
    email,
    country,
    cast(created as timestamp) as created_at
from {{ source('stripe', 'stripe_customers') }}