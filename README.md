📊 Sales Trend Analysis Using SQL Aggregations
🧾 Objective
To analyze monthly sales trends by calculating total revenue and order volume using SQL. This project uses a cleaned online sales dataset and demonstrates SQL aggregation techniques to gain insights into business performance over time.

🛠️ Tools Used
SQL Engine: MySQL / PostgreSQL / SQLite

Dataset: online_sales_dataset.csv

SQL Script: onlinesales.sql

Result Output: onlinesalesoutput.jpg

📂 Repository Contents
File Name	Description
online_sales_dataset.csv	Raw dataset containing transaction-level sales data
onlinesales.sql	SQL script to calculate monthly revenue and volume
onlinesalesoutput.jpg	Screenshot of the output result from SQL execution

🧠 Analysis Performed
✅ Monthly Aggregation Logic
Extracted year and month from the order_date column.

Calculated:

total_orders: using COUNT(DISTINCT CONCAT(product_id, order_date, CustomerID))

total_revenue: using SUM(Quantity * UnitPrice)

Filtered data for the time period: 2020-01-01 to 2020-03-01

Sorted output by order_year and order_month

✅ Key SQL Functions Used
YEAR() and MONTH() from STR_TO_DATE()

SUM() for aggregating revenue

COUNT(DISTINCT ...) for order volume

GROUP BY and ORDER BY for structuring results

