---------------------------------------
-- Create Views Gold -- 
---------------------------------------
CREATE VIEW gold.calender
AS
SELECT * 
FROM 
    OPENROWSET(
            BULK 'https://storagedatalakechetan.dfs.core.windows.net/silver/AdventureWorks_Calender/',
            FORMAT = 'PARQUET'
        ) as quer1

---------------------------------------
-- Create Views Gold -- 
---------------------------------------
CREATE VIEW gold.customers
AS
SELECT * 
FROM 
    OPENROWSET(
            BULK 'https://storagedatalakechetan.dfs.core.windows.net/silver/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'
        ) as quer2

---------------------------------------
-- Create Views Gold -- 
---------------------------------------
CREATE VIEW gold.product_categories
AS
SELECT * 
FROM 
    OPENROWSET(
            BULK 'https://storagedatalakechetan.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
            FORMAT = 'PARQUET'
        ) as quer3

---------------------------------------
-- Create Views Gold -- 
---------------------------------------
CREATE VIEW gold.products
AS
SELECT * 
FROM 
    OPENROWSET(
            BULK 'https://storagedatalakechetan.dfs.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) as quer4

---------------------------------------
-- Create Views Gold -- 
---------------------------------------
CREATE VIEW gold.territories
AS
SELECT * 
FROM 
    OPENROWSET(
            BULK 'https://storagedatalakechetan.dfs.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) as quer4


---------------------------------------
-- Create Views Gold --  sales_17
---------------------------------------
CREATE VIEW gold.sales_17
AS
SELECT * 
FROM 
    OPENROWSET(
            BULK 'https://storagedatalakechetan.dfs.core.windows.net/silver/sales_17/',
            FORMAT = 'PARQUET'
        ) as quer4