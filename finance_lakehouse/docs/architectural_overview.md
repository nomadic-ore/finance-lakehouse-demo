# 🏗️ Architecture Overview

This document outlines the high-level architecture of the **Finance Lakehouse** project using dbt and Databricks.

---

## 🔄 Data Flow Overview

1. **Ingestion (Bronze Layer)**  
   Raw CSVs are uploaded into Databricks and stored in the `bronze` schema. These include:
   - `stripe_subscriptions`
   - `stripe_customers`
   - `stripe_charges`

2. **Staging (dbt Models)**  
   dbt staging models clean and cast raw columns (e.g., timestamps, integers). These models live in:
and materialize to views like:
- `bronze.stg_subscriptions`
- `bronze.stg_customers`
- `bronze.stg_charges`

3. **Dimensional Modeling (Silver Layer)**  
Staged views are transformed into dimensional and fact tables:
- `dim_customers`
- `dim_subscriptions`
- `fct_charges`

These are materialized as **tables** for performance and z-ordered on keys (`customer_id`, `subscription_id`).

4. **Optimization (Databricks SQL)**  
After dbt runs, we run:
```sql
OPTIMIZE silver.fct_charges ZORDER BY subscription_id;
