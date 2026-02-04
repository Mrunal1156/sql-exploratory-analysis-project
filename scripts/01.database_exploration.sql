
/*
===============================================================================
                            Dimensions Exploration
===============================================================================

Purpose:
    - To understand and explore the structure of dimension tables.
    - To identify unique values or categories within each dimension.
    - To recognize how data may be grouped or segmented for later analysis.

SQL Functions Used:
    - DISTINCT      → to find unique values
    - ORDER BY      → to sort values for easier inspection

===============================================================================
*/



-- Retrieve a list of all tables in the database
SELECT 
    TABLE_CATALOG, 
    TABLE_SCHEMA, 
    TABLE_NAME, 
    TABLE_TYPE
FROM INFORMATION_SCHEMA.TABLES;

-- Retrieve all columns for a specific table (dim_customers)
SELECT 
    COLUMN_NAME, 
    DATA_TYPE, 
    IS_NULLABLE, 
    CHARACTER_MAXIMUM_LENGTH
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers';
