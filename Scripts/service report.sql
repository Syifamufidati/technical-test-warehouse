-- service report

DELETE FROM service_report;

INSERT INTO service_report
SELECT

strftime('%Y', a.service_date) AS periode,
a.vin,
c.name AS customer_name,
ca.address,

COUNT(a.service_ticket) AS count_service,

CASE
WHEN COUNT(a.service_ticket) > 10 THEN 'HIGH'
WHEN COUNT(a.service_ticket) BETWEEN 5 AND 10 THEN 'MED'
ELSE 'LOW'
END AS priority

FROM after_sales_clean a

JOIN customers_clean c
ON a.customer_id = c.id

LEFT JOIN customer_addresses_clean ca
ON ca.customer_id = c.id

GROUP BY
periode,
a.vin,
customer_name,
address;