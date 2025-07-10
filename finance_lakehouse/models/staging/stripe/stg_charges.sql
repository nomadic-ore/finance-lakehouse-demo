{{  config(materialzed='view') }}

SELECT
    charge_id,
    subscription_id,
    amount_usd / 100 as amount,
    currency,
    status,
    cast(created as timestamp) as created_at
FROM {{ source('stripe', 'stripe_charges') }}
