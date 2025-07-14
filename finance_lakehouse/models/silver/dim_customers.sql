SELECT
    customer_id,
    email,
    country,
    CAST(created_at AS timestamp) AS created_at
FROM {{ ref('stg_customers') }}