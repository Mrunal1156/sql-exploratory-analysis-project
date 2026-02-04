/*
===============================================================================
                              dimensions_exploration
===============================================================================

Purpose:
    - Explore the structure and content of dimension tables.
    - Identify unique values or categories in each dimension.
    - Understand how data can be grouped or segmented for analysis.

SQL Functions Used:
    - DISTINCT   -- to retrieve unique values
    - ORDER BY   -- to sort results for better readability

===============================================================================
*/

-- Retrieve a list of unique countries from which customers originate
SELECT DISTINCT 
    country 
FROM gold.dim_customers
ORDER BY country;

-- Retrieve a list of unique categories, subcategories, and products
SELECT DISTINCT 
    category, 
    subcategory, 
    product_name 
FROM gold.dim_products
ORDER BY category, subcategory, product_name;
