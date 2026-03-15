--Costumer_Raw

CREATE TABLE customers_raw (
id INTEGER,
name TEXT,
dob TEXT,
created_at TEXT
);

INSERT INTO customers_raw VALUES
(1,'Antonio','1998-08-04','2025-03-01 14:24:40'),
(2,'Brandon','2001-04-21','2025-03-02 08:12:54'),
(3,'Charlie','1980/11/15','2025-03-02 11:20:02'),
(4,'Dominikus','14/01/1995','2025-03-03 09:50:41'),
(5,'Erik','1900-01-01','2025-03-03 17:22:03'),
(6,'PT Black Bird',NULL,'2025-03-04 12:52:16');

SELECT * FROM customers_raw;