# Data Engineering Technical Test

## Overview
This project implements a simple data warehouse pipeline for an automotive retail company.

## Architecture

RAW → CLEAN → DATAMART

### Raw Layer
- customers_raw
- sales_raw
- after_sales_raw
- customer_addresses_raw

### Clean Layer
Data cleaning using Python (Pandas).

- customers_clean
- sales_clean
- after_sales_clean
- customer_addresses_clean

### Datamart Layer
Aggregated report tables.

- sales_report
- service_report

## Technologies
- Python
- SQL
- SQLite
- Pandas
