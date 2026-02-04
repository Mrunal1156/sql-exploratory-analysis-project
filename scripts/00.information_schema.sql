/*
===============================================================================
                           information_schema_exploration
===============================================================================

Purpose:
    - Explore the database structure using INFORMATION_SCHEMA views.
    - Identify all tables present in the current database.
    - Retrieve metadata about columns for a specific table.
    - Understand table design, data types, and schema organization.

SQL Functions / Views Used:
    - INFORMATION_SCHEMA.TABLES    -- lists all tables and views
    - INFORMATION_SCHEMA.COLUMNS   -- lists all columns of a table
    - WHERE                        -- filters for a specific table
    - ORDER BY                     -- optional sorting for readability

===============================================================================
*/


-- List all tables in the database
SELECT * 
FROM INFORMATION_SCHEMA.TABLES;


-- List all columns of the 'dim_customers' table
SELECT * 
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'dim_customers';
