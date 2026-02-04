/*
===============================================================================
                           date_range_exploration
===============================================================================

Purpose:
    - Explore the range of sales dates in the dataset.
    - Identify the first and last order dates.
    - Determine how many years and months of sales history are available.
    - Profile customer ages by identifying youngest and oldest customers.

SQL Functions Used:
    - MIN()       -- earliest date or minimum value
    - MAX()       -- latest date or maximum value
    - DATEDIFF()  -- calculate difference between two dates
    - GETDATE()   -- current system date (used for age calculation)

===============================================================================
*/


-- Find the date of the first and last order
-- And calculate years and months of available sales data
SELECT
    MIN(order_date) AS first_order_date,
    MAX(order_date) AS last_order_date,
    DATEDIFF(YEAR,  MIN(order_date), MAX(order_date))  AS order_range_years,
    DATEDIFF(MONTH, MIN(order_date), MAX(order_date))  AS order_range_months
FROM gold.fact_sales;


-- Find the youngest and oldest customers
SELECT
    MIN(birthdate) AS youngest_birthdate,
    MAX(birthdate) AS oldest_birthdate,
    DATEDIFF(YEAR, MIN(birthdate), GETDATE()) AS youngest_customers_age,
    DATEDIFF(YEAR, MAX(birthdate), GETDATE()) AS oldest_customers_age
FROM gold.dim_customers;
