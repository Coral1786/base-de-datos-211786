SELECT 
    d.FullDateAlternateKey,
    COUNT(f.SalesOrderNumber) AS TotalOrders
FROM AdventureWorksDW2022.dbo.DimDate AS d
LEFT JOIN FactInternetSales AS f
    ON d.DateKey = f.OrderDateKey
GROUP BY d.FullDateAlternateKey
ORDER BY AdventureWorksDW2022.dbo.TotalOrders DESC;
