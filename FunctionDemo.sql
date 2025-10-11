SELECT 
    f.SalesTerritoryKey,
    COUNT(*) AS TotalOrders,
    SUM(f.SalesAmount) AS TotalSales,
    ROUND(AVG(f.UnitPrice), 2) AS AvgUnitPrice,
    MAX(f.OrderDate) AS LastOrderDate,
    DATENAME(YEAR, MAX(f.OrderDate)) AS LastOrderYear,
    UPPER(t.SalesTerritoryRegion) AS TerritoryRegion
FROM FactResellerSales AS f
INNER JOIN DimSalesTerritory AS t
    ON f.SalesTerritoryKey = t.SalesTerritoryKey
GROUP BY f.SalesTerritoryKey, t.SalesTerritoryRegion
ORDER BY f.SalesTerritoryKey;