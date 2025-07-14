# 🧱 Dimensional Model Overview

This document describes the dimensional data model used in the **Finance Lakehouse** project, specifically the **silver** layer. It consists of two dimension tables (`dim_customers`, `dim_subscriptions`) and one fact table (`fct_charges`).

---

## 📘 dim_customers

Contains one row per unique customer. Enriched with basic customer attributes such as email and country.

| Column       | Description                          |
|--------------|--------------------------------------|
| `customer_id`| Unique identifier for each customer. |
| `email`      | Customer’s email address.            |
| `country`    | Country associated with the customer.|

---

## 📘 dim_subscriptions

One row per subscription, with a foreign key to the associated customer. Acts as the bridge between customers and charges.

| Column           | Description                                      |
|------------------|--------------------------------------------------|
| `subscription_id`| Unique identifier for the subscription.          |
| `customer_id`    | Foreign key to the associated customer.          |

---

## 📗 fct_charges

Fact table containing individual charge events tied to subscriptions. Measures the financial activity related to billing.

| Column            | Description                                        |
|-------------------|----------------------------------------------------|
| `charge_id`       | Unique identifier for each charge.                 |
| `amount`          | Amount charged in USD cents.                       |
| `subscription_id` | Foreign key to the associated subscription.        |

---

These tables are designed for use in downstream reporting and analytics, optimized with `OPTIMIZE` and `ZORDER BY` operations on Databricks for performance.

