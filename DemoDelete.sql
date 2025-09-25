
DELETE FROM Sales.SalesPerson
WHERE BusinessEntityID NOT IN (
    SELECT SalesPersonID 
    FROM Sales.SalesOrderHeader 
    WHERE SalesPersonID IS NOT NULL
);