SELECT
    YEAR(STR_TO_DATE(order_date, '%m/%d/%Y')) AS order_year,
    MONTH(STR_TO_DATE(order_date, '%m/%d/%Y')) AS order_month,
    COUNT(DISTINCT CONCAT(product_id, '_', order_date, '_', CustomerID)) AS total_orders,
    SUM(Quantity * UnitPrice) AS total_revenue
FROM
    online_sales.online_sales_dataset
WHERE
    STR_TO_DATE(order_date, '%m/%d/%Y') BETWEEN '2020-03-01' AND '2020-01-01'
GROUP BY
    order_year,
    order_month
ORDER BY
    order_year,
    order_month;
USE online_sales;
SELECT
    YEAR(STR_TO_DATE(order_date, '%m/%d/%Y')) AS order_year,
    MONTH(STR_TO_DATE(order_date, '%m/%d/%Y')) AS order_month,
    COUNT(DISTINCT CONCAT(product_id, '_', order_date, '_', CustomerID)) AS total_orders,
    SUM(Quantity * UnitPrice) AS total_revenue
FROM
    online_sales_dataset
WHERE
    STR_TO_DATE(order_date, '%m/%d/%Y') BETWEEN '2020-01-01' AND '2020-03-01'
GROUP BY
    order_year,
    order_month
ORDER BY
    order_year,
    order_month;

