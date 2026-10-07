{{ config(materialized='table') }}

select cast(date_day as date) as date_day
from range(date '2024-01-01', date '2026-01-01', interval 1 day) t(date_day)