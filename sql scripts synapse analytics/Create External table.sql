
CREATE MASTER KEY ENCRYPTION BY PASSWORD ='Chowdhari!@#123'

CREATE DATABASE SCOPED CREDENTIAL cred_chetan
with 
    IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH 
(
    LOCATION = 'https://storagedatalakechetan.dfs.core.windows.net/silver',
    CREDENTIAL = cred_chetan

)

CREATE EXTERNAL DATA SOURCE source_gold
WITH 
(
    LOCATION = 'https://storagedatalakechetan.dfs.core.windows.net/gold',
    CREDENTIAL = cred_chetan

)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH 
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


--------------------------------------------------
--  CREATE EXTERNAL TABLES EXTSALES
--------------------------------------------------

CREATE EXTERNAL TABLE gold.extsales
with 
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS 
SELECT * FROM gold.sales_17





SELECT * from gold.extsales



