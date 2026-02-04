/*
===============================================================================
                        product_performance_exploration
===============================================================================

Questions:
    - Which 5 products generate the highest revenue?
    - What are the 5 worst-performing products in terms of sales?

Purpose:
    - Identify top revenue-generating products.
    - Detect underperforming products for improvement or removal.
    - Support product-level decision-making and strategy.

===============================================================================
*/


/* =============================================================================
   Which 5 products generate the highest revenue?
   ========================================================================== */
SELECT TOP 5
    product_name,
    total_revenue,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM (
    SELECT 
        p.product_name,
        SUM(f.sales_amount) AS total_revenue
    FROM gold.fact_sales AS f
    LEFT JOIN gold.dim_products AS p
        ON p.product_key = f.product_key
    GROUP BY p.product_name
) t
ORDER BY total_revenue DESC;



/* =============================================================================
   What are the 5 worst-performing products in terms of sales?
   ========================================================================== */
SELECT TOP 5
    product_name,
    total_revenue,
    RANK() OVER (ORDER BY total_revenue ASC) AS revenue_rank
FROM (
    SELECT 
        p.product_name,
        SUM(f.sales_amount) AS total_revenue
    FROM gold.fact_sales AS f
    LEFT JOIN gold.dim_products AS p
        ON p.product_key = f.product_key
    GROUP BY p.product_name
) t
ORDER BY total_revenue ASC;
