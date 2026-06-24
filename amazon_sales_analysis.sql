SELECT Category,
       COUNT(*) AS total_orders
FROM amazon_sales_data
GROUP BY Category
ORDER BY total_orders DESC;

SELECT `ship-state`,
       COUNT(*) AS total_orders
FROM amazon_sales_data
GROUP BY `ship-state`
ORDER BY total_orders DESC
LIMIT 10;

SELECT Fulfilment,
       COUNT(*) AS total_orders
FROM amazon_sales_data
GROUP BY Fulfilment;

SELECT Category,
       ROUND(SUM(CAST(Amount AS DECIMAL(10,2))),2) AS Revenue
FROM amazon_sales_data
WHERE Amount <> ''
GROUP BY Category
ORDER BY Revenue DESC;

SELECT SKU,
       ROUND(SUM(CAST(Amount AS DECIMAL(10,2))),2) AS Revenue
FROM amazon_sales_data
WHERE Amount <> ''
GROUP BY SKU
ORDER BY Revenue DESC
LIMIT 10;

SELECT Category,
       COUNT(*) AS Cancelled_Orders
FROM amazon_sales_data
WHERE Status LIKE '%Cancelled%'
GROUP BY Category
ORDER BY Cancelled_Orders DESC;