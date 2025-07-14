SELECT
    charge_id,
    subscription_id,
    currency,
    amount,
    status,
    CAST(created_at AS timestamp) AS created_at
FROM {{ ref('stg_charges') }}