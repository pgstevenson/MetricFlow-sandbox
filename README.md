# MetricFlow-sandbox

A local dbt + DuckDB sandbox with a MetricFlow semantic layer, built on the Jaffle Shop sample data.

## Layout

- `my_project/` — the dbt project (models, semantic models, `profiles.yml`, raw CSVs in `data/`)
- `main.ipynb` — queries MetricFlow metrics into pandas DataFrames and plots them
- `settings.py` — config (`PROJECT_DIR` can be overridden via `.env`)

## Setup

Requires Python 3.14+ and [uv](https://docs.astral.sh/uv/).

```sh
uv sync
cd my_project
export DBT_PROFILES_DIR=.
uv run dbt build
```

## Query metrics

From `my_project/`:

```sh
uv run mf query --metrics order_total,order_count --group-by metric_time__month
```

Or open `main.ipynb` and use the `mf_query` helper.
