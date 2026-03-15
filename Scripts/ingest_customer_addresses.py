import pandas as pd
import glob
from sqlalchemy import create_engine

engine = create_engine("sqlite:///Database/maju_jaya.db")

files = glob.glob("Data/customer_addresses_*.csv")

print("Files ditemukan:", files)

for file in files:

    print("Processing:", file)

    df = pd.read_csv(file)

    df.to_sql(
        "customer_addresses_raw",
        con=engine,
        if_exists="append",
        index=False
    )

    print("Data berhasil di ingest")