{{ config(materialized='table') }}

SELECT
    subscription_id,
    customer_id,
    price_id,
    quantity::int      AS quantity,
    status,
    CAST(created AS timestamp) AS created_at
FROM {{ source('stripe', 'stripe_subscriptions') }}
