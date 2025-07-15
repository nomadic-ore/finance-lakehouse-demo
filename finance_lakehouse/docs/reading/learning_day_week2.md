📚 Week 2 Reading Day – Trello-style Learning Board
📌 Column 1: Silver Layer Concepts
🟩 Materializations in dbt
🔗 Materializations in dbt

🧠 Focus on: table vs. view vs. incremental

✅ You switched staging/silver to table — revisit why/when each materialization is appropriate.

🟩 Source Freshness Checks
🔗 Source Freshness in dbt

🧪 You added loaded_at_field + freshness checks — understand their role in monitoring data timeliness.

🟩 dbt Tests Deep Dive
🔗 dbt Test Reference

🛠 Review not_null, unique, accepted_values, relationships

💡 Consider custom tests for gold layer metrics later.

📌 Column 2: Databricks & Optimization
🟨 OPTIMIZE and ZORDER
🔗 OPTIMIZE and ZORDER

📈 These improve query performance via file compaction and better data skipping.

🟨 Delta Lake Concepts
🔗 Intro to Delta Lake

🧬 Learn about ACID transactions, schema enforcement, and time travel — core to Databricks + dbt synergy.

📌 Column 3: Data Modeling & Documentation
🟦 Star vs. Snowflake Schema
🔗 Dimensional Modeling in dbt

🧩 Clarify what defines a good fact table vs. dimension table in analytics engineering.

🟦 Documenting Models in dbt
🔗 Model Documentation

📚 You added schema.yml + markdown docs — refine naming, descriptions, and markdown formatting.

🟦 Data Glossary Template
🔗 dbt Glossary Example

🗂 Use this to expand your glossary.md to define key business terms, model fields, and metrics.

📌 Column 4: Git + GitHub for dbt
🟥 .gitignore Best Practices
🔗 dbt .gitignore Reference

✅ Verify you're ignoring .venv/, target/, logs/, dbt_packages/, __pycache__/, etc.

🟥 Git Workflow for dbt Projects
🔗 dbt Git Guide

🛠 Use git add ., git commit -m "", git push, and clean commit messages to track learning progress.