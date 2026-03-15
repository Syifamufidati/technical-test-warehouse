-- Sales_raw

CREATE TABLE after_sales_raw (
service_ticket TEXT,
vin TEXT,
customer_id INTEGER,
model TEXT,
service_date TEXT,
service_type TEXT,
created_at TEXT
);

INSERT INTO after_sales_raw VALUES
('T124-kgu1','MAS8160POE',3,'RANGGO','2025-07-11','BP','2025-07-11 09:24:40'),
('T560-jga1','JLK1368KDE',4,'INNAVO','2025-08-04','PM','2025-08-04 10:12:54'),
('T521-oai8','POI1059IIK',5,'RAIZA','2026-09-10','GR','2026-09-10 12:45:02');


SELECT*FROM sales_raw;