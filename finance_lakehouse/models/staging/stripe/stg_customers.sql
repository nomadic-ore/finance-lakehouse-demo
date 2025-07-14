{{ config(materialized='table') }}

SELECT
    customer_id,
    email,
    country,
    CAST(created AS timestamp) AS created_at
FROM {{ source('stripe', 'stripe_customers') }}