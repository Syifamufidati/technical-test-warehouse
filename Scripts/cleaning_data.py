import pandas as pd
from sqlalchemy import create_engine
engine = create_engine("sqlite:///Database/maju_jaya.db")

#cleaning customer_raw

address = pd.read_sql("SELECT * FROM customer_addresses_raw", engine)

address.columns = address.columns.str.strip()

address["province"] = address["province"].str.upper()

address.to_sql(
    "customer_addresses_clean",
    engine,
    if_exists="replace",
    index=False
)

#cleaning customer addresses

address = pd.read_sql("SELECT * FROM customer_addresses_raw", engine)

address.columns = address.columns.str.strip()

address["province"] = address["province"].str.upper()

#cleaning sales_raw

sales = pd.read_sql("SELECT * FROM sales_raw", engine)

sales["price"] = sales["price"].astype(float)

sales.to_sql(
    "sales_clean",
    engine,
    if_exists="replace",
    index=False
)

#cleaning after sales

after_sales = pd.read_sql("SELECT * FROM after_sales_raw", engine)

after_sales["service_date"] = pd.to_datetime(after_sales["service_date"])

after_sales.to_sql(
    "after_sales_clean",
    engine,
    if_exists="replace",
    index=False
)