# # Automotive Data Warehouse Pipeline

## Overview
This project implements a simple data warehouse pipeline for an automotive retail company using Python and SQLite.

## Architecture
RAW → CLEAN → DATAMART

### Raw Layer
Stores raw data from source systems.

Tables:
- customers_raw
- sales_raw
- after_sales_raw
- customer_addresses_raw

### Clean Layer
Data cleaning and standardization are performed using Python (Pandas).

Tables:
- customers_clean
- sales_clean
- after_sales_clean
- customer_addresses_clean

### Datamart Layer
Contains aggregated report tables used for business analysis.

Tables:
- sales_report
- service_report

## Technologies
- Python
- SQLite
