SELECT
  subscription_id,
  customer_id,
  price_id,
  quantity,
  status,
  CAST(created_at AS timestamp) AS created_at
FROM {{ ref('stg_subscriptions') }}
