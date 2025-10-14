SELECT 
    t.SalesTerritoryRegion,
    COUNT(c.CustomerKey) AS TotalCustomers
FROM DimSalesTerritory AS t
LEFT JOIN DimCustomer AS c
    ON t.SalesTerritoryKey = c.SalesTerritoryKey
GROUP BY t.SalesTerritoryRegion
ORDER BY TotalCustomers DESC;