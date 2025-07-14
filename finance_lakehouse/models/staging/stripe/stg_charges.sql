{{  config(materialzed='view') }}

SELECT
    charge_id,
    subscription_id,
    amount_usd / 100 AS amount,
    currency,
    status,
    CAST(created AS timestamp) AS created_at
FROM {{ source('stripe', 'stripe_charges') }}
