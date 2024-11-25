SELECT * 
FROM 
    OPENROWSET(
        BULK 'https://storagedatalakechetan.dfs.core.windows.net/silver/AdventureWorks_Calender/',
        FORMAT = 'PARQUET'
    ) as query1