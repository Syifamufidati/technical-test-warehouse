-- sales_report

CREATE TABLE sales_report (
periode TEXT,
class TEXT,
model TEXT,
total REAL
);

INSERT INTO sales_report
SELECT
strftime('%Y-%m', invoice_date) AS periode,

CASE
WHEN price BETWEEN 100000000 AND 250000000 THEN 'LOW'
WHEN price BETWEEN 250000000 AND 400000000 THEN 'MEDIUM'
ELSE 'HIGH'
END AS class,

model,


printf('%,d', SUM(price)) AS total

FROM sales_clean

GROUP BY periode, class, model;

SELECT * FROM sales_report;